#include<iostream>
#include<vector>

using namespace std ;

class Node{
	public :
	int data ;
	Node* next ;

	Node(int data){
       this->data = data ;
       this->next = nullptr ;
	}

};

class LinkedList{
	private :
	Node* head ;

	public :
	LinkedList(){
		head = nullptr ;
	}

	void append(int data){

		Node *node = new Node(data) ;

		if(head==nullptr){
			head = node ;
		}else{
			Node* last = head ;
			while(last->next!=nullptr){
				last = last->next ;
			}
			last->next = node ;
		}

	}

	void printList(){
		Node* temp = head ;

		while(temp!=nullptr){
			cout << temp->data << " " ;
			temp = temp->next ;
		}

		cout << endl ;
	}

	void InsertTail(int item){
		Node* temp = head ;
		Node* tailobj = new Node(item) ;temp = temp->next ;

		while(true){
			if(temp->next==nullptr){
                 temp->next = tailobj ;
                 break ;
			}
			temp = temp->next ;
		}
	}

	void InsertHead(int value){
		Node *NewHead = new Node(value) ;

		NewHead->next = head ;
		head = NewHead ;
	}

	void DeleteNodeOfValue(int value){
        
        Node* temp = head ;

        while(true){
           if(temp->next->data==value){
           	temp->next = temp->next->next ;
           	break ;
           }
           temp = temp->next ;
  
        }
	}

};

int main(){
	LinkedList Singly ;

	Singly.append(20);
	Singly.append(21);
	Singly.append(22);
	Singly.append(23);
	Singly.append(24);

	Singly.InsertTail(19) ;
	Singly.InsertHead(12) ;

	Singly.DeleteNodeOfValue(22) ;

	Singly.printList();
}