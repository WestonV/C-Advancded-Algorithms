#include <iostream>
#include <string>
#include <sstream>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unordered_map>
#include <list>

using namespace std;
int main() {

    std::string inputChoice = "";
    std::string inputName = "";
    string newFriendName = "";
    std::list<string> friends;
    std::unordered_map<std::string, std::list<string>> facebookHashTable;


    printf("\n\n**********Welcome to Micro-Facebook************\n\n");


    //all menu functions inside of a do while
    do {

        printf("Below is a list of options...\n\nPress P to add a person to Micro-Facebook.\nPress F to record that two specified people are friends.\nPress U to record that two specified people are no longer friends.\nPress L to print out the friends of the specified person.\nPress Q to check whether two people are friends.\nPRESS X TO EXIT.\n\n ");

        getline(cin, inputChoice);

//        if(inputChoice != "P" || inputChoice != "F" || inputChoice != "U" || inputChoice !="L" || inputChoice!="Q" || inputChoice!="u" || inputChoice!="l" || inputChoice!="p" || inputChoice!="f" || inputChoice!="q" || inputChoice!="X" || inputChoice!="x")
//        {
//            printf("You have not entered a correct option, please try again:");
//            getline(cin, inputChoice);
//
//        }

        if (inputChoice == "P" || inputChoice == "p") {
            printf("You have chosen option P.\nPlease enter the name of the person you would like to add to Micro-Facebook: ");
            getline(cin, inputName);
            //call function adding inputName to facebook
            friends.push_back(inputName);
            facebookHashTable.insert(make_pair(inputName, friends));
            friends.pop_front();
            std::cout << inputName << " has now been added to Micro-Facebook!\n" << endl;

        }
        if (inputChoice == "F" || inputChoice == "f") {
            printf("You have chosen option %s to add two people as friends.\nPlease enter the name of the first person:\n",
                   inputChoice.c_str());
            getline(cin, inputName);
            cout << "\nNow who would you like " << inputName << " to be friends with: " << endl;
            getline(cin, newFriendName);
            //call function with inputName and newFriendName making them friends
            facebookHashTable[inputName].push_front(newFriendName);

            //error check to see if the second person has been added to the program yet
            std::unordered_map<std::string, std::list<string>>::const_iterator check = facebookHashTable.find(newFriendName);
            if(check == facebookHashTable.end()) {
                cout<<newFriendName<<" has not been added to the program. Please choose option P again and add this member.\n"<<endl;
            } else {
                facebookHashTable[newFriendName].push_front(inputName);
                cout << inputName << " is now friends with " << newFriendName << "\n"<< endl;
            }

        }
        if (inputChoice == "U" || inputChoice == "u") {
            cout << "You have chosen option " << inputChoice << " to unfriend two people. What is the name of the first person? " << endl;
            getline(cin, inputName);
            cout << "Now who does " << inputName << " want to unfriend?" << endl;
            getline(cin, newFriendName);
            //function to unfriend the two people
            facebookHashTable[inputName].remove(newFriendName);
            facebookHashTable[newFriendName].remove(inputName);
            cout << inputName << " is no longer friends with " << newFriendName <<"\n"<< endl;
        }
        if (inputChoice == "L" || inputChoice == "l") {
            cout << "You have chosen option " << inputChoice << ". Whose friends list would you like to display?"
                 << endl;
            getline(cin, inputName);
            cout << "Here are all of " << inputName << "'s friends:" << endl;
            //call function printing the list of names of this specific person
            for(std::string x: facebookHashTable[inputName]){
                if(x != inputName)
                    std::cout<< x <<endl;
            }
        }
        if (inputChoice == "Q" || inputChoice == "q") {
            cout << "You have chosen option " << inputChoice
                 << " to check whether or not two people are friends. What is the name of the first person?" << endl;
            getline(cin, inputName);
            cout << "Now who do you want to check if " << inputName << " is friends with?" << endl;
            getline(cin, newFriendName);
            //call function to check and see if they are friends
            int checkFriend = 0;
            for(std::string x: facebookHashTable[inputName]) {
                if (x == newFriendName) {
                    checkFriend = 1;
//                    break;
                }
            }
            if(checkFriend == 1){
                printf("Yes they are friends\n");
            } else {
                printf("no they are not friends\n");
            }

        }



    }while(inputChoice != "X" && inputChoice !="x");

    //if choice is == X, then print a good bye message
    printf("\n*********Thank you for using Micro-Facebook. Have a good day!*********\n");
//    std::cout<<facebookHashTable[0];
    return 0;
}
