- 👋 Hi, I’m @akshat2009-ux
- 👀 I’m interested in ...
- 🌱 I’m currently learning ...
- 💞️ I’m looking to collaborate on ...
- 📫 How to reach me ...

<!---
akshat2009-ux/akshat2009-ux is a ✨ special ✨ repository because its `README.md` (this file) appears on your GitHub profile.
You can click the Preview link to take a look at your changes.
--->


 Main.java
 
 import java.util.*;
public class Main 
{
            public static void main(String args[])
        {
            Scanner sc=new Scanner(System.in);
            int i=0;
            PhoneBook objmain=new PhoneBook();
            while(i==0)
            {
                System.out.println("Menu\n1.Add Contact\n2.Display all contacts\n3.Search contact by phone\n4.Remove contact\n5.Exit");
                System.out.println("Enter your choice: ");
                int n=Integer.parseInt(sc.nextLine());
                if(n==1)
                {
                    Contact obj=new Contact();
                    System.out.println("Add a contact: ");
                    System.out.println("Enter the First Name: ");
                    obj.setFirstName(sc.nextLine());
                    System.out.println("Enter the Last Name: ");
                    obj.setLastName(sc.nextLine());
                    System.out.println("Enter the Phone No. : ");
                    obj.setPhoneNumber(Long.parseLong(sc.nextLine()));
                    System.out.println("Enter the Email: ");
                    obj.setEmailId(sc.nextLine());
                    objmain.addContact(obj);
                }
                if(n==2)
                {
                    System.out.println("The contacts in the List are:");
                    List<Contact>obj=objmain.viewAllContacts();
                    for(Contact temp:obj)
                    {
                        System.out.println("First Name:"+temp.getFirstName());
                        System.out.println("Last Name:"+temp.getLastName());
                        System.out.println("Phone No.:"+temp.getPhoneNumber());
                        System.out.println("Email:"+temp.getEmailId());
                    }
                }
                if(n==3)
                {
                    System.out.println("Enter the Phone number to search contact:");
                    Long n1=Long.parseLong(sc.nextLine());
                    Contact obj1=objmain.viewContactGivenPhone(n1);
                    System.out.println("The contact is:");
                    System.out.println("First Name:"+obj1.getFirstName());
                    System.out.println("Last Name:"+obj1.getLastName());
                    System.out.println("Phone No.:"+obj1.getPhoneNumber());
                    System.out.println("Email:"+obj1.getEmailId());
                }
                if(n==4)
                {
                    System.out.println("Enter the Phone number to remove:");
                    Long n1=Long.parseLong(sc.nextLine());
                    System.out.println("Do you want to remove the contact(Y/N):");
                    char ch=sc.nextLine().charAt(0);
                    if(ch=='Y')
                    {
                        boolean f1=objmain.removeContact(n1);
                        if(f1)
                        System.out.println("The contact is successfully deleted");
                        else
                        System.out.println("Contact is not found");
                    }
                    if(ch=='N')
                    {
                        System.out.println("ok");
                    }
                    
                }
                if(n==5)
                {
                    System.exit(0);
                }
            }
        }
    }
    
    
    
    
    Conatct.java
    
    
    public class Contact {
  private String firstName;
  private String lastName;
  private long  phoneNumber;
  private String emailId;
  public Contact(){}
  public String getFirstName() {
    return firstName;
  }
  public void setFirstName(String firstName) {
    this.firstName = firstName;
  }
  public String getLastName() {
    return lastName;
  }
  public void setLastName(String lastName) {
    this.lastName = lastName;
  }
  public long getPhoneNumber() {
    return phoneNumber;
  }
  public void setPhoneNumber(long phoneNumber) {
    this.phoneNumber = phoneNumber;
  }
  public String getEmailId() {
    return emailId;
  }
  public void setEmailId(String emailId) {
    this.emailId = emailId;
  }
  public Contact(String firstName, String lastName, long phoneNumber,
      String emailId) {
    super();
    this.firstName = firstName;
    this.lastName = lastName;
    this.phoneNumber = phoneNumber;
    this.emailId = emailId;
  }
}



PhoneBook.java


import java.util.*;
public class PhoneBook
{
    private List<Contact> phoneBook=new ArrayList<Contact>();
    public void setPhoneBook(List<Contact>obj)
    {
        phoneBook=obj;
    }
    public List<Contact>getPhoneBook()
    {
        return phoneBook;
    }
    public void addContact(Contact contactObj)
    {
        phoneBook.add(contactObj);
    }
    public List<Contact> viewAllContacts()
    {
        return phoneBook;
    }
    public Contact viewContactGivenPhone(long phoneNumber)
    {
        Contact obj=new Contact();
        for(Contact obj1:phoneBook)
        {
            if(obj1.getPhoneNumber()==phoneNumber)
            {
                obj=obj1;
            }
        }
        return obj;
    }
    public boolean removeContact(long phoneNumber)
    {
        boolean f=false;
        for(Contact obj:phoneBook)
        {
            if(obj.getPhoneNumber()==phoneNumber)
            {
                f=true;
                phoneBook.remove(obj);
                break;
            }
        }
        return f;
    }
}
