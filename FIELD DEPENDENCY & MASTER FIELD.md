
FIELD DEPENDENCY:--

MultiSelect  PickList :  This is just like a picklist where we can select more than one option at a time .
	
?	It can have 150 options
?	We can select 100 options at  a time
?	Maximum length of each option is 40 characters
?	Maximum length of all the options together 1500 characters

Field Dependency : When  value of  one field controls the value of another field we call it a field dependency

Controlling Field :  it can be any of the PICKLIST field or CHECKBOX field
Dependent Field : It can be any of the  PICKLIST field or  MULTI SELECT PICKLIST field



MASTER DETAIL:--- 

1. Master-Detail field can be created only on Custom Objects

2. Master-Detail field is created only on the object which doesnt have
  any records in it

3. Object in which we have created master-Detail field that object we call
   as Detail object | Child object

4. Object to whose records master-detail field is referring that object 
   we call it as master object/ Parent Object

5. Object in which master-detail field is created in that object owner 
	will not be available 

6.Who ever is the owner master record he will be the owner of corresponding
	child record

7.If we delete the master record corresponding child records are also deleted.

8.The child records which are deleted due to the deletion of its master record
	will not move to recylebin but when we undelte the master record
 corresponding child records are also undeleted

9.Maximum we can have two master-detail fields on any object

10.Child object can be parent to any other object upto three levels

11.If any object has two master -detail fields on it .It cannot be master to any
   other object

12.Maximum we can have 2^3 master on objects indirectly

13.Sharing setting will specify which users in the organization can perform
  create |Edit |Delete operation on the corresponding child records

14.Allow Reparenting : If you enable this option we change the parent record id
	in master detail

15.When we delete  a master-detail field and undelte the field it becomes lookup

1.	A			2		A		3.		A
	|					|				|
        B				   ------------------		-----------------------------
						|	|	|		|	|	|	|
						B	C	D		B	C	D	E

			Allowed			Allowed			Allowed
	







11.	An object can have only two master ‘ field on it 

1.	 A		2 .  A       B		3.   		 A	B	C
 	|		      |        |		       |       |	|
	B		     --------		   		--------------------
		    		    |			           |
		     		   C    			          D

	Allowed	Allowed		Not allowed

12.	 Child Object can be Parent to some other object up to three levels

1.	 A		2.	A		3. 	A	 4.	A
 	|		    	|			|		|
	B			B			B		B
	|			|			|		
	C			C			C		
				|			|		
				D			D		
							|
							E

	Allowed			Allowed		Not Allowed		Allowed


13.	Object which has two parents on it can never be a parent to some other object

			A		x			A	X
			|		|			|	|
			--------------------			B	Y
				|				|	|
				C				C	Z
				|				|	|
				D				-----------
								      |
								      D


			Not Allowed					Allowed

Steps to Create a Master –detail field 

Navigation: Setup?Build?Create?Objects?Select Object-?Custom fields& Relations?New 

Step1: Select Data Type as Master-details

Step 2: Select Master Object

Step 3:  Enter Field Details 
	
	1. Field Label	: Customer Details
	
	2. Field Name   : Customer Details 

	3. Sharing Settings : Select the Minimum level of access required on Master object to perform 
				Read /Edit/Delete /Create on child records

Step 4: Establish the field level security

Step 5:  Add the field to the Child object default   page layout

Step 6:  Add the field to the parent object Page Layouts


APPLICATION:-
FirstName
PanCard
Current Address
Permanent Address
Phone
Alt Phone
Email
Application Type
Status
City
Branch
Applicant Type
Applied Date
Credit Card
Limit

Validation Rules 						
						
1 . Applications for  New Credit Card Cannot be created/Updated without pancard No						
						
2. If CreditCard field is enabled then Limit  field cannot be left blank						
						
3. Current Address Field cannot be left blank if the Application Type is New Card						
						
4. If Applicant Type is  Salaried Employee Pancard is a must  and If the applicant type is business then Tan no is must						


CUSTOMER:-
LastName
FirstName
PanCard
Current Address
Permanent Address
Phone
Alt Phone
Email
Approved Date
Bonus Points


Validation :						
						
1. Customer Record cannot be updated without phone no						
2. Approved date cannot be before today						
						
Workflow 						
1.When ever customer is created confirmation alert should be sent						
2.When ever customer phone  or email is updated  confirmation mail should be sent 						

CREDIT CARD:--
CardNo
CardType
Limit
UsedLimit
AvailableLimit
Due Amount
UnBilledAmount
Service Tax
Billing Date
Due Date
Customer 
Bonus Points

TRANSACTION:-
CreditCard
Type
Amount
TrasactionDate
Mobile Phone
Email

PAYMENT:_
CreditCard
Mode
Amount
Payment Date
Mobile No
Email


LOAN:--

Customer
Loan Type
Security
Applied Amount
Salary
Assert Cost
Intrest Rate
Instalments
Sanctioned Amount
Intrest 
Payable Amount
EMI Amount
Due Amount
Due Date


Intrest Rate is calculated Based on Loan Type  :  Education :10% ,Housing :12% Personal : 13%  Vehicle : 14%
Instalments are calculated based on Loan Type: Education: 48 ,Housing :120 ,Personal : 24 ,Vehicle :32

SanctionedAmount*intrestRate*(Intalments/12) /100

PayableAmount /Instalments

BLACKLIST:-
Name
Pancard
Phone
Email
Address

 1 .Existing records can not be updated without Phone no					
					

1. Object : Loan 

   Create the fields : 
---------------------------------------------------
    Field Name 		DataType  	 Options
--------------------------------------------------
    AppliedDate		Date	

    Type		              PickList	              Eduction
					Housing 
					Personal

    security		PicKList	              Asserts
					Salary
	
    Salary		Currecy		

    Applied_Amount	Currency	

    Assert_Cost		Currency
---------------------------------------------------------
Formule 1: 
	
scenario : Create a formule field  to calculate the instalments

	Education : 48
	Housing   : 120
	Personal  : 32


	Formule : Number 

		CASE( Type__c ,

		    'Education', 48 ,

		    'Housing',120,

		    'Personal',32,
			
		     0
		)

-----------------------------------------------------------
Scenario : Create a formule field to calculate intrestRate

	Rule : Education : 10 %

	       Housing   : 12 %

               Personal  : 14 %

	Formule : Percentage

		CASE ( Type__c ,
			
			'Educaiton',0.10,

			'Housing', 0.12,

			'Personal',0.14,
			0
		)
----------------------------------------------------------------
IF( condition , stmt1, stmt2) 
	If the given condition is true stmt1 will execute otherwise stmt2 will be executed.

Scenario : Create a formule field  Priority  

	Rule : If applied amount is more than 1,00,000 then set the priority as 'High ' otherwise 'Low'

	Formule :Text

	IF( Applied_Amount__c > 100000 , 'High','Low')

-------------------------------------------------------------
ISPICKVAL(PickListField ,Literal) :

Scenario : Create formule field to calculate the processing fee

	Loan Type  : Housing : 1000

		   : other than housing : 500


	Formule : Currency 

		 IF( ISPICKVAL( Type__c,'Housing'),

		      1000,

		       500
		 )

-----------------------------------------------------------------
Scenario :  Create a formule field Max_Amount  to calcualte 
		maximum amount what bank can sanction

	Security : Asserts 

		  Max Amount :60 % of assertcost

	Security : Salary

		  Education :  32 times of 60% of your salary

		  Housing   : 100 times of 60% of your salary

		  Personal  : 20 times of 60% of your salary


Formule : Currency :

IF( ISPICKVAL(Security__c,'Asserts'),
 
      Assert_Cost__c *0.60,

     IF( ISPICKVAL(Security__c,'Salary') ,
        
        CASE( Type__c ,

             'Education',Salary__c*0.60*32,

             'Housing',Salary__c*0.60*100,

            'Personal',Salary__c*0.60*20,

            0
        ), 

        0
     )
)
=================================================================

Sceanrio : Create a formule field Sactioned Amount 

	Rule : If appliedAmount is less than MaxAmount amount
		then  Applied Amount is Sanctioned other wise 
		maxamount is sanctioned

	Formule :Currency


IF(  Applied_Amount__c  <  Max_Amount__c ,
         
     Applied_Amount__c,

       Max_Amount__c

)

-----------------------------------------------------------
Scenario : Create a formule field EMI 

	Rule :SanctionedAmount|Instalments

				
	Formule : Currency

	Sanctioned_Amount__c  / Instalments__c

-------------------------------------------------------------
Date & DateTime Functions 

	1. TODAY(): This will return today's date

	2. Now() : Current date and time 

	3. DATE(YYYY,MM,DD) :This will create instance of date

		DATE(2016,2,23)

	4. DAY(Date) : This will return day in the month
	
		DAY(TODAY()) : 24

		DAY(DATE(2016,2,23)) : 23

	5.MONTH(Date) : This will return month in the given date

		MONTH(TODAY()) : 2

		MONTH( DATE(2016,6,23)) : 6


	6.YEAR(Date) : This will return year in the given date

		YEAR(TODAY()) : 2016

	7.DATEVALUE(DateTime) : This will take datetime value and
			return date value

		DATEVALUE(NOW()) : DATE(2016,2,24)

Scenario : Create a formule field No_Days which will return 
	   how many days you modified the record

	  Formule : Number

	  TODAY()-DATEVALUE(LastModifiedDate)

-----------------------------------------------------------------

1. Object : Loan 

   Create the fields : 
---------------------------------------------------
    Field Name 		DataType  	 Options
--------------------------------------------------
    AppliedDate		Date	

    Type		PickList	Eduction
					        Housing 
					        Personal

    security		PicKList	Asserts
					            Salary
	
    Salary		Currecy		

    Applied_Amount	Currency	

    Assert_Cost		Currency



PAGE LAYOUT:

1) Page Layout controls how an object should be displayed to a profiles 

2) It controls the fields that should be visible on the layout.

3) It controls the order of the fields


Controls the visibility of the fields

    Field level				          page layout
Visible		readonly		Visible		Readonly	Remarks
NO		NO			NO		NO		HIDE
OK		NO			NO		NO		HIDE
					OK		NO		READ/WRITE
					OK		OK		READ
OK		OK			OK		OK		READ

5) Controls the buttons & related list that should be displayed on the layout for a profile.

Navigation

Setup
	Build
		Create
			Object
				ObjectName
						PageLayout

Step1:- Enter the Layout name
Step2:- Select the fields, button, related list on the page layout
Step3:- Save
Step4:- Asssign the page layout to a profile.


RECORD TYPE:-

It is a concept of assigning more than one page layout to the same profile.

using record type we can also control the options given in the pick list filed.

Navigation:-
Setup
	Build
		Create
			Object
				ObjectName
					   RecordType
						     New RecordType
Step1:- Choose Master/Child Record Type
Step2:- Enter Record Type Name
Step3:- Select Active Checkbox
Step4:- Select the list of profiles for whom the record type should be created
Step5:- Select the pagelayout which need to be assigned for teh profile based on recordtype
Step6:- Select the list of picklist option that should be displayed in the picklist
Step7:- If you add any new option in the Master picklist corressponding child picklist will not get this option be default. We have to amnuallyass the option to every child record.


OWD  (ORGANISATION WIDE DEFAULT SETTINGS)
This will specify which record are visible to the users and what type of operation can be performed by the user on the records.

1) OWD:PRIVATE  If we define OWD as private only owner will be able to access the records and others cannot read the records.



      111- SAM:    
      222- RAM    
      333-KIRAN:   

SAM:  
	111- SAM:    R/W/D

KIRAN:

	333-KIRAN:   R/W/D

RAM

	222-RAM:   R/W/D

2) OWD: PUBLIC READ: If you define OWD as public read all the users in the organisation will be able to access all the records but on others record they can only perform READ operation.


SAM:  
	111- SAM:    R/W/D
	333-KIRAN:   R
	222-RAM:     R


KIRAN:  
	111- SAM:    R
	333-KIRAN:   R/W/D
	222-RAM:     R


3) OWD: PUBLIC READ/WRITE: If you define OWD as public read /Write all the users in the organisation can view all the records but on others record they can only perform READ/WRITE operation.


SAM:  
	111- SAM:    R/W/D
	333-KIRAN:   R/W
	222-RAM:     R/W


KIRAN:  
	111- SAM:    R/W
	333-KIRAN:   R/W/D
	222-RAM:     R/W


3) OWD: PUBLIC READ/WRITE/TRANSFER: If you define OWD as public read /Write/Transfer all the users in the organisation can perform R/W/T ON ALL THE RECORDS  but this can be given on Lead objects and CASE objects.

SAM:  
	111- SAM:    R/W/D/T
	333-KIRAN:   R/W/T
	222-RAM:     R/W/T


KIRAN:  
	111- SAM:    R/W/T
	333-KIRAN:   R/W/D/T
	222-RAM:     R/W/T

4) OWD: PUBLIC FULL ACCESS: If you define OWD as public full Access all the users in the organisation can perform R/W/T/D ON ALL THE RECORDS  but this can be given on Lead objects and CAMPAIGN objects.

SAM:  
	111- SAM:    R/W/D/T
	333-KIRAN:   R/W/D/T
	222-RAM:     R/W/D/T


KIRAN:  
	111- SAM:    R/W/D/T
	333-KIRAN:   R/W/D/T
	222-RAM:     R/W/D/T

CONTROLLED BY PARENT:

If two objects are connected by MASTER-DETAIL relationship. OWD define on parent object will be applied on corresponding child object which we called as controlled by parent.



GRANT ACCESS USING ROLE HIERACHY:-

if you enable this option, all the users who are above you in the role hierachy they can access all the records that are visible to you and they can perform all type of operation on your records.

GRANT ACCESS USING ROLE HIERACHY IS BY DEFAULT ENABLE ON STANDARD OBJECTS. IT IS AN OPTION FUNCTIONALITY ON CUSTOM OBJECTS.

READ	EDIT	DELETE	VIEWALL	MODIFYALL	OWD		(111-SAM, 222-KIRAN)
NO	NO	NO	NO	NO		PRIVATE		HIDDEN
						PUBLICREAD	HIDDEN
						PUBLIC R/W	HIDDEN
OK	NO	NO	NO	NO		PRIVATE		111-SAM	  (READ)
						PUBLIC READ	111-SAM   (READ)
								222-KIRAN (READ)
						PUBLIC R/W	111-SAM   (READ)
								222-KIRAN (READ)
OK	OK	NO	NO	NO		PRIVATE		111-SAM	  (READ/WRITE)
						PUBLIC READ	111-SAM   (READ/WRITE)
								222-KIRAN (READ)
						PUBLIC R/W	111-SAM   (READ/WRITE)
								222-KIRAN (READ/WRITE)

OK	OK	OK	NO	NO		PRIVATE		111-SAM	  (READ/WRITE/DELETE)
						PUBLIC READ	111-SAM   (READ/WRITE/DELETE)
								222-KIRAN (READ/WRITE)
						PUBLIC R/W	111-SAM   (READ/WRITE/DELETE)
								222-KIRAN (READ/WRITE)


OK	OK	OK	OK	NO		PRIVATE		111-SAM	  (READ/WRITE/DELETE)
						PUBLIC READ	111-SAM   (READ/WRITE/DELETE)
								222-KIRAN (READ/WRITE)
						PUBLIC R/W	111-SAM   (READ/WRITE/DELETE)
								222-KIRAN (READ/WRITE)

OK	OK	OK	OK	OK		PRIVATE		111-SAM	  (READ/WRITE/DELETE)
						PUBLIC READ	111-SAM   (READ/WRITE/DELETE)
								222-KIRAN (READ/WRITE)
						PUBLIC R/W	111-SAM   (READ/WRITE/DELETE)
								222-KIRAN (READ/WRITE)



SHARING ROLES:-

PUBLIC GROUPS:-   It is a  set of users which is created by administrator members of the group can be individual users. Users with particular role or role of subordinate odr users in other public groups.
NAVIGATION:-

	SETUP
		ADMINISTRATOR
				MANAGE USERS
						PUBLIC GROUPS
								NEW GROUP

Step1:-  Enter the groupName
Step2:- Select the group numbrs


QUEUE:- When you want a group of users to be owner for a record than we use queue.
  It is a concept of assigning group of users as a owner on a group of objects

NAVIGATION:-

  SETUP
	ADMINISTRATOR
			MANAGE USERS
					QUEUES
						NEW QUEUE

Step1:-Enter the queue anme
Step2:-	Select the objects on which the queue is accepted.
Step3:- Select the members of the queue
Step4:- Save


WHO CAN BE THE MEMBERS OF THE QUEUE
 	 1) Users
 	 2) Roles
  	 3) ROles & Subordinated
  	 4)  Public group
							

Validations :
--------------
	1. These are used to check the format of the data is entered 
	   according to your business logic or not 

	2. These  are validations are verifyied  when we insert new record
	   or edit exiting record .

	3. Thre are two types of validation rules 
	
		1. System validation rules

		2. Custom Validation rules 

	4. System Validation rules 
		
	   1.These will verify wheather the data is macthing data type


	   2.Required field are entered or not 


1.Object : Loan

	Field Name	Datatype

   1.   Applied Amount  Currency

   2.   Security	PickList	Asserts |Salary

   3.   Salary		Currency	
	
   4.   AssertCost	Currency

   5.   Applied Date	Date

   6.   PanCard 	Text
---------------------------------------------------------------------
Validationg Rule 1:
------------------------------------------------------------------------	
	Any new Loan application more than one lakh should provide pancard 

	
 Logic :

	AND (  
 
         	ISNEW() ,

           	Applied_Amount__c > 100000,

          	ISBLANK( Pancard__c )
	   )	
----------------------------------------------------------------------
Validation Rule 2:
-----------------------------------------------------------------------
 1. If security for the loan is salary then salary field cannot be null

 2. if Security for the loan is asserts then assertcost cannot be null


Logic :
	OR(
        	AND(
               		ISPICKVAL(Security,'Salary'),

               		ISNULL(Salary__c)
         	),
       		AND( 
             		ISPICKVAL(Security,'Asserts'),
              		ISNULL( Assert_Cost__c )
        	)
	)
 
-------------------------------------------------------------------------
Validation Rule 3:
----------------------------------------------------------------------
1. When ever  existing loan record is  salary field is modified 

2. new salary value should be more than the existing value

   
  ISCHANGED(FieldName): This will return true if the value of the given
			field modified	

  PRIORVALUE(Fieldname): This will return old value  when the field 
			 is modified


Logic :

	AND( 

        	ISCHANGED(Salary__c),

        	PRIORVALUE(Salary__c) > Salary__c
  	)

-----------------------------------------------------------------------
Validation Rule 4:
-----------------------------------------------------------------------
1. New Loan records are not accepted  after 10th mar and before 20th mar


	AND(
        	ISNEW(),
        	AND(  
			MONTH(Applied_Date__c)==3 ,
  
             		AND( 
				DAY(Applied_Date__c)  >10 , 
                   		DAY(Applied_Date__c) <20 
                	)
        	)
	)
------------------------------------------------------------------------					
											
	Customers										
Field Label	Field Name	Data Type	Options	Required							
Customer Id	Name	AutoNumber	NA	Yes							
Last Name	Last Name	Text									
First Name	First Name	Text	NA	No							
Phone	Phone	Phone	NA	Yes							
Email	Email	Email	NA	No							
Age	Age	Number	NA	NA							
Communication Address	Communicatin Address	Text Area	NA	NA							
Membership Type	Membership Type	PickList	Platinum/Gold/Silver	NA							
Bonus Points	Bonus Points	Number	NA	NA							
											
											
											
	Travel Agency										
Field Label	Field Name	DataType	Options	Required							
TANO	Name	AutoNumber	NA	Yes							
Agency Name	Agency Name	Text	NA	Yes							
State	State	PickList	AP	NA							
			TG								
			TN								
											
City	City	PickList	HYD								
			BAN								
			CHE								
Routes	Routes	MultiSelect Picklist									
Phone	Phone	Phone	NA	NA							
Alt No	Alt No	Phone	NA	NA							
Email	Email	Email	NA	NA							
											
											
Contact											
Field Label	Field Name	DataType	Requrired	Standard/Custom							
Last Name	Last Name	Text	Yes	Standard							
First Nmae	First Name	Text	NA	Standard							
Phone	Phone	Phone	NA	Standard							
Alt Phone	Alt Phone	Phone	NA	Standard							
other Phone	Other Phone	Phone 	NA	Standard							
Agency	Agency	Lookup(Travel Agency)	NA	CustomField							
Contact Score	Contact Score	Formule 	NA	Custom Field 	Formule : 						
					First Name	10					
					Alt Phone	10					
					Other Phone	10					
Quality	Quality	Formule	NA	Custom Field	If Contact score is > 30 5 star contact   >20 three star > 10 one star						
Branch	Branch	PickList	NA	Custom Field							
											
											
Services											
Field Label	Field Name	DataType	Required	Options							
Service No	Name	AutoNumber	Yes	No							
Agency Name	Agency name	Lookup(Agency )	Yes	No							
Bus Type	Bus Type	PickList	Yes	Delux							
				AC Semi Sleeper							
				AC Sleeper							
Total Seats	Total seats	Number	Yes	No							
booked Seats	Booked Seats	Number	No	No							
Available Seats	Available seats	Number 	No	No							
Ticket Cost	Ticket Cost	Currency	No	No							
Service Tax	Service Tax	CheckBox	No	No							
From To	FromTo	PickList									
Journey Date	Journey Date	Date									
											
											
Invoice 											
Field Label	Field Name	Data Type	Required	Options							
Invoice No	Name	Auto Number	yes								
Customer	Customer	Master-Detail	Yes								
Service 	service	Master-Detail	yes								
Quantity	Quanity	Number	No								
Unit Price	Unit Price 	Currency	Yes								
Amount	Amount	Currency									
Service tax	service Tax	Currency									
Total Price	Total Price	Currency									
Invoice Date	Invoice Date	Date									
											
Payment											
Field Label	Field Name	Data Type	Required								
Payment Id	Payment Id	Auto Number									
Invoice 	Invoice 										
Customer	Customer										
Mode 	Mode 										
Date	Date										
											
											
User1 	Agency1	Agency Profile	Salesforce								
											
user 2	Agency2		Salesforce Platform								
											
User 3	Customer 3	Customer Profile	Salesforce Platform								
											
User 4	Customer 4		Salesforce Platform								
											