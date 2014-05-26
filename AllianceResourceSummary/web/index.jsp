<%-- 
    Document   : index
    Created on : May 10, 2014, 10:37:35 PM
    Author     : Michael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.myapp.data.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Alliance Resource Management System</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="media/css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="media/css/dataTables.bootstrap.css">
        <script src="media/js/complete.js" type="text/javascript" ></script>
        <script src="media/js/jquery.js" type="text/javascript"></script>
        <script src="media/js/bootstrap.js" type="text/javascript"></script>
        <script src="media/js/jquery.dataTables.js" type="text/javascript"></script>    
        <script src="media/js/jquery.dataTables.columnFilter.js" type="text/javascript" ></script>
        <script>
            $(document).ready(function() {                        
                $('#submit').click(function() {  
                    var username=$('#user').val();
                 $.get('ActionServlet',{user:username},function(responseText) { 
                        $('#modalbody').text(responseText);         
                    });
                });
            });
        </script>
        <style type="text/css">
            @import "media/css/jquery.dataTables.css";
        </style>
        <style>
            .container{
               
                margin-left: auto;
     		margin-right: auto;				
            } 
            ul{
                font-size: 125%;
            }
            button{
                background-color: #f5f5f5;
            }
            .container-fluid{
                background-color: #f5f5f5;
                 margin-left: auto;
     		margin-right: auto;
            }
            body{
                padding-bottom: 70px;
            }
            
          
        </style>  
        <script type="text/javascript">
            $(document).ready(function(){
                $('#datatables').dataTable().columnFilter({
                    
                    aoColumns: [ null,
				     { type: "select", values: [ '1', '0.75', '0.5', '0.25', '0']  },
				     { type: "select", values: [ '1', '0.75', '0.5', '0.25', '0']  },
                                     { type: "select", values: [ '1', '0.75', '0.5', '0.25', '0']  },
                                     { type: "select", values: [ '1', '0.75', '0.5', '0.25', '0']  },
                                     { type: "select", values: [ '1', '0.75', '0.5', '0.25', '0']  },
                                     { type: "select", values: [ '1', '0.75', '0.5', '0.25', '0']  },
                                     { type: "select", values: [ '1', '0.75', '0.5', '0.25', '0']  },
                                     { type: "select", values: [ '1', '0.75', '0.5', '0.25', '0']  },
                                     { type: "select", values: [ '1', '0.75', '0.5', '0.25', '0']  },
                                     { type: "select", values: [ '1', '0.75', '0.5', '0.25', '0']  },
                                     { type: "select", values: [ '1', '0.75', '0.5', '0.25', '0']  },
                                     { type: "select", values: [ '1', '0.75', '0.5', '0.25', '0']  }
                                                                         
            ]
                });
                
                 /*var table = $('#datatables').DataTable();
                 
                 $("#example thead th").each( function ( i ) {
        var select = $('<select><option value=""></option></select>')
            .appendTo( $(this).empty() )
            .on( 'change', function () {
                table.column( i )
                    .search( $(this).val() )
                    .draw();
            } );
 
        table.column( i ).data().unique().sort().each( function ( d, j ) {
            select.append( '<option value="'+d+'">'+d+'</option>' );
        } );
    } );*/
                
            });
        </script>
    </head>
    <body >
        
        <form id="form1">
        <h1>AJAX Demo using Jquery in JSP and Servlet</h1>
        Enter your Name:
        <input type="hidden" id="user" value="michael"/>
        <input type="button" id="submit" value="qwerqer"/>
        <tr class="tbrow" id="tablerow"></tr>
        <br/>
        <div id="welcometext">
        </div>
        </form>
        
        
        
        
        
        
        <div class="container" >
            <div class="row">
             <div style="background-color: #f5f5f5">
                <img src="media/images/header_logo.jpg" class="img-rounded" alt="Responsive image">
             </div>
                <nav class="navbar navbar-default " role="navigation">
                    <div class="container-fluid">
			<ul class="nav navbar-nav ">
                            <li><a href="#"> Project Summary</a></li>
                            <li><a href="index.jsp"> Resource Summary</a></li>
			</ul>
                    </div>
                </nav>
                
            </div>

                <div class="row">
                    <div class="col-xs-6 col-sm-4"> <!--summary div-->
                        <table id="summary" class="table table-bordered"> <!--summary table-->
                            <thead>
                                <tr>
                                    <th><h3>Summary:</h3></th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    int totcount, phcount, jpcount, rowcount, alliancecount;
                                    Database databasesum = new Database();
                                    databasesum.dbConnect();
                                    Summary summary = new Summary();
                                    
                                    totcount = summary.getNumOfEmployees();
                                    phcount = summary.getCountPH() ;
                                    jpcount = summary.getCountJP();
                                    rowcount = summary.getCountRoW();
                                    alliancecount = summary.getCountAl();
                                %>
                                <tr>
                                    <td style="font-weight: bold">Total Head Count:</td>
                                    <td><%= totcount%></td>
                                </tr>
                                <tr>
                                    <td style="font-weight: bold"> Employees per business unit: </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>Philippines</td>
                                    <td><%= phcount%></td>
                                </tr>
                                <tr>
                                    <td>Japan</td>
                                    <td><%= jpcount%></td>
                                </tr>
                                <tr>
                                    <td>Rest of the World</td>
                                    <td><%= rowcount%></td>
                                </tr>
                                <tr>
                                    <td>Alliance</td>
                                    <td><%= alliancecount%></td>
                                </tr>
                                <tr>
                                    <td style="font-weight: bold">Jobless:</td>
                                    <td><%= totcount - (phcount + jpcount + rowcount + alliancecount)%></td>
                                </tr>
                                <% databasesum.dbClose();%>
                            </tbody>
                        </table>    <!--summary table-->
                    </div>
                    <div class="col-md-7">	
                <!-- employee list table-->
                <table id="datatables" class="display table">   
                    <thead>
                        <tr>
                            <th>Name</th>  
                            <th>Jan</th>
                            <th>Feb</th>
                            <th>Mar</th>
                            <th>Apr</th>
                            <th>May</th>
                            <th>Jun</th>
                            <th>Jul</th>
                            <th>Aug</th>
                            <th>Sept</th>
                            <th>Oct</th>
                            <th>Nov</th>
                            <th>Dec</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>Name</th>                                           
                            <th>-</th>
                            <th>-</th>
                            <th>-</th>
                            <th>-</th>
                            <th>-</th>
                            <th>-</th>
                            <th>-</th>
                            <th>-</th>
                            <th>-</th>
                            <th>-</th>
                            <th>-</th>
                            <th>-</th>
                        </tr>
                    </tfoot>
                    
                    <tbody>
                        <%
                            Database database = new Database();
                            Employee employee = new Employee();
                            Effort effort = new Effort();
                            float[] months=new float[12];;
                            int size;
                            
                            database.dbConnect();
                            
                            ArrayList<Employee> e_list = new ArrayList();
                            e_list = employee.getEmployeeList();
                            size = e_list.size();

                            for(int i = 0; i < size; i++){
                                employee = new Employee();
                                employee = e_list.get(i);
                                effort = employee.getEffort();
                                months = effort.getMonths();
                        %>
                                <form id="form2">
                                    <input type="hidden" id="user" value="<%= employee.getEmpIDNum()%>"/>
                                    <tr class="tbrow" id="tablerow" data-toggle="modal" data-target="#myModal">
                                        <td><%= employee.getFirstName()%>&nbsp;<%= employee.getMiddleName() %>&nbsp;<%= employee.getLastName()%></td>						
                                        <td><%= months[0]%></td>
                                        <td><%= months[1]%></td>
                                        <td><%= months[2]%></td>
                                        <td><%= months[3]%></td>
                                        <td><%= months[4]%></td>
                                        <td><%= months[5]%></td>
                                        <td><%= months[6]%></td>
                                        <td><%= months[7]%></td>
                                        <td><%= months[8]%></td>
                                        <td><%= months[9]%></td>
                                        <td><%= months[10]%></td>
                                        <td><%= months[11]%></td>
                                    </tr>
                                </form>
                        <%        
                            }
                            database.dbClose();
                        %>
                    </tbody>
                </table>
                        <p>Note: To refresh the table, select " - " in the dropdown menu from the column you have filtered. </p>
                        <!-- Modal -->
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title" id="myModalLabel">Employee Information</h4>
                            </div>
                            <div class="modal-body">
                                <table>
                                    <tbody>
                                    <div class="container" id="modalbody">

                                        </div><!-- /.col-lg-6 -->
                                    </tbody>
                                </table>
                            </div>
                            <div class="modal-footer">
                              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div><!-- Modal -->  
                    </div>
                    </div>
           
        </div> <!-- Container -->
    </body>
</html>
