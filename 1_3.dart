import 'dart:io';

void main(){
    List<int> Menu = [1,2,3,4,5,6];
    print("Enter 1 for Create or Add any Elements in List ");
    print("Enter 2 for Read the Elements in List ");
    print("Enter 3 for Update or Modify any Elements in List ");
    print("Enter 4 for Delete or Remove any Elements in List ");
    print("Enter 0 for Exiting the Program ");

    print(" This is Your Original Array : ${Menu}");
    print("Enter Your Choice to Work on this List : ");
    int choice = int.parse(stdin.readLineSync()!);
    switch(choice){
      case 1: 
        print(" Enter 1 for Adding only one Element At the End of List ");
        print(" Enter 2 for Adding more than one Element At the End of List ");
        print(" Enter 3 for Adding only one Element At any Index of List ");
        print(" Enter 4 for Adding more than one Element At any Index of List ");
        print("Enter Your Creation Choice : ");
        int createchoice = int.parse(stdin.readLineSync()!);
      switch(createchoice){
        case 1:
          print("Enter The Element that You Want to Add at the End of List : ");
          int onecreate = int.parse(stdin.readLineSync()!);
          Menu.add(onecreate);
          break;
        case 2:
          print("How Many Elements you want to add ? ");
          int numofelement = int.parse(stdin.readLineSync()!);
          print("Enter The Elements that You Want to Add at the End of List : ");
          int manycreate = int.parse(stdin.readLineSync()!);
          Menu.add(manycreate);
          break;
        case 3:
          print("Enter the Element that you want to add in List in any Index : ");
          int oneinsert = int.parse(stdin.readLineSync()!);
          print("Enter the Index You Want to Insert one Element : ");
          int oneindex = int.parse(stdin.readLineSync()!);
          Menu.insert(oneinsert,oneindex);
          break;
        case 4:
          print("How many Elements You want to Insert in List at any Index : ");
          int numofelements = int.parse(stdin.readLineSync()!);
          print("Enter The Elements that You want to add in List at any Index : ");
          int manyinsert = int.parse(stdin.readLineSync()!);
          print("Enter the Index You Want to Insert the Elements : ");
          int manyindex = int.parse(stdin.readLineSync()!);
          Menu.insertAll(manyindex, iterable);
          break;
        default:
          print("Enter Valid Input");
      }   
      break;
    case 2:
      print("Reading the List : ");
      print("${Menu}");
      break;
    case 3:
      print("Enter the Element's Starting Index which you want Update in the list : ");
      int elementupdatestart=int.parse(stdin.readLineSync()!);
      print("Enter the Element's Ending Index which you want Update in the list : ");
      int elementupdateend=int.parse(stdin.readLineSync()!);
      print("Enter the new Value for this Element : ");
      int newupdated = int.parse(stdin.readLineSync()!);
      Menu.replaceRange(elementupdatestart, elementupdateend, newupdated);
      break;
    case 4:
    print("Enter 1 to Remove one Element from the List ");
    print("Enter 2 to Remove Elements from any Index in List ");
    print("Enter 3 to Remove Last Element from the List ");
    print("Enter Your Choice : ");
    int  removechoice = int.parse(stdin.readLineSync()!);
    switch(removechoice){
      case 1:
        print("Enter the Element you want to Delete : ");
        int deletevalue = int.parse(stdin.readLineSync()!);
        Menu.remove(deletevalue);
        break;
      case 2:
        print("Enter the Index from where you want to delete Elements in the List : ");
        int indexfromwhere = int.parse(stdin.readLineSync()!);
        Menu.removeWhere((indexfromwhere));
        break;
      case 3:
        Menu.removeLast();
        break;
      default:
        print("Invalid Choice");
    }
    default:
      print("Invalid Choice ");
  } 
}