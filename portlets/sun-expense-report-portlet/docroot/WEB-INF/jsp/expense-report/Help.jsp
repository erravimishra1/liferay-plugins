<h4><b>Expenses Report Widget</b></h4><br>
    
 This portlet models the Expenses Reports Reclaim process that is typical in an organization like Sun Microsystems. 
 
 It also demonstrates the following features:<br>
 
 1. <b>Workflow Process through JavaCAPS</b> - The business process of the Expense Report Submission Approval Process is modelled as a JCAPS Workflow<br>
 2. <b>SAW</b> - (Simple API for Workflow) - The actions are performed on the business process through <a href = "http://saw.dev.java.net">SAW </a><br>
 3. <a href="https://ajax.dev.java.net"><b>JMaki</b></a> - Uses JMaki Yahoo table widgets<br>
 4. Usage of <b>ServeResource feature</b> of <a href="http://jcp.org/en/jsr/detail?id=286">JSR286 portlets</a> for Ajax requests (For Displaying Report Details)<br>
     
  
An Expense Report is a report comprising details of the expenses (like Business Travel, Relocation, BroadBand Bills Claim) incurred by an employee 
that he could reclaim from the organisation with the manager approval. The typical claim process works like this: <br>
    
    <b>Creating a New Expense Report</b><br>
    
    1. Employee/Manager logs in the portal and creates a new expense report, providing details of individual items of the report. <br>
    2. He can choose to either save the report or submit the report on creation.<br>
        
    <b>Viewing Reports Summary</b><br>
    3. On login, he can view the summary of Saved(to be submitted by him) Reports and Pending(to be approved by the manager) Reports that are raised by him.<br>
    4. On clicking a particular Report ID, he can view the details of the report including the individual item details  (Viewing Report details is done without a page refresh through Ajax calls).<br>
        
     <b>Submitting Saved Reports</b><br>        
    5. When he views a Saved Report Detail, he has an option to Submit it. When a report is submitted, a workflow process is triggered in JCAPS through a web service call.<br>
        
     <b>Manager Login</b><br>
        
    6. When a manager logs in, he can see a list of pending reports that he has raised (in the first table) and a list of pending reports raised by his reportees (second table), waiting for his approval.<br>
    7. The list of Pending tasks is obtained from the JCAPS through SAW API<br>
    <b>Approval and Rejection of Reports</b><br>
    8. On clicking on any report that is waiting for his approval, he can view the details of the report (without page refresh) and approve or reject it.
    9. Approval or Rejection of Report contacts the <b>JavaCAPS process</b> to act on the task<br>
    

Users available to the system created using the Liferay Admin Portlet are mapped to either 'Employee' role or the 'Manager 'role'.<br>
    If a user who is not available in the system tries to view the portlet, a polite message appears..


     
 
 
 



