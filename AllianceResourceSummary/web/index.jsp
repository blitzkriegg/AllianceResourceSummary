<%-- 
    Document   : index
    Created on : May 10, 2014, 10:37:35 PM
    Author     : Michael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Alliance Resource Management System</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="media/css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/plug-ins/e9421181788/integration/bootstrap/3/dataTables.bootstrap.css">
        <script src="media/js/jquery.js" type="text/javascript"></script>
        <script src="media/js/jquery.dataTables.js" type="text/javascript"></script>    
        <style type="text/css">
            @import "media/css/jquery.dataTables.css";
        </style>
        <style>
            .container{
                width: 750px;
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
            }
            body{
                padding-bottom: 70px;
            }
        </style>  
        <script type="text/javascript">
            $(document).ready(function(){
                $('#datatables').dataTable();
            });
        </script>
    </head>
    <body >
        <div class="container" >
            <div class="thumbnail">
                <img src="header_logo.jpg" class="img-rounded" alt="Responsive image">
                <nav class="navbar navbar-default " role="navigation">
                    <div class="container-fluid">
			<ul class="nav navbar-nav ">
                            <li><a href="#"> Project Summary</a></li>
                            <li><a href="index.php"> Resource Summary</a></li>
			</ul>
                    </div>
                </nav>
                <!-- Button trigger modal -->
                <button class="btn pull-right" data-toggle="modal" data-target="#myModal">
                  Search By:
                </button>

                <!-- Modal -->
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title" id="myModalLabel">Search data</h4>
                            </div>
                            <div class="modal-body">
                                <table>
                                    <tbody>
                                        <div class="container">
                                            <div class="input-group">
                                                <ul>
                                                    <span>
                                                        <input type="checkbox">
                                                    </span>
                                                    ID
                                                </ul>
                                                <ul>
                                                    <span>
                                                        <input type="checkbox">
                                                    </span>
                                                Name
                                                </ul>
                                            </div><!-- /input-group -->
                                        </div><!-- /.col-lg-6 -->
                                    </tbody>
                                </table>
                            </div>
                            <div class="modal-footer">
                              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                              <button type="button" class="btn">Ok</button>
                            </div>
                        </div>
                    </div>
                </div><!-- Modal -->
                <div></div>
			
                <table  id="datatables" class="display">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>                       
                            <th>Mar</th>
                            <th>Apr</th>
                            <th>May</th>
                            <th>Jun</th>
                            <th>Jul</th>
                            <th>Aug</th>
                            <th>Sept</th>
                            <th>Oct</th>
                            <th>Nov</th>

                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>01</td>
                            <td>Amber</td>						
                            <td>11.6</td>
                            <td>78.4</td>
                            <td>11.6</td>
                            <td>78.4</td>
                            <td>11.6</td>
                            <td>78.4</td>
                            <td>11.6</td>
                            <td>78.4</td>
                            <td>11.6</td>
                        </tr>
                        <tr>
                            <td>02</td>
                            <td>Navin</td>						
                            <td>23.0</td>
                            <td>36.3</td>
                            <td>23.0</td>
                            <td>36.3</td>
                            <td>23.0</td>
                            <td>36.3</td>
                            <td>23.0</td>
                            <td>36.3</td>
                            <td>23.0</td>			
                        </tr>
                        <tr>
                            <td>03</td>
                            <td>Stephanie</td>						
                            <td>4.7</td> 
                            <td>8.4</td>
                            <td>4.7</td> 
                            <td>8.4</td>
                            <td>4.7</td> 
                            <td>8.4</td>
                            <td>4.7</td> 
                            <td>8.4</td>
                            <td>4.7</td> 
                        </tr>
                            <tr>
                            <td>04</td>
                            <td>Ted</td>						
                            <td>3.6</td> 
                            <td>37.4</td>
                            <td>3.6</td> 
                            <td>37.4</td>
                            <td>3.6</td> 
                            <td>37.4</td>
                            <td>3.6</td> 
                            <td>37.4</td>
                            <td>3.6</td> 
                        </tr>
                        <tr>
                            <td>05</td>
                            <td>John</td>										<td>3.1</td>
                            <td>79.9</td>
                            <td>3.1</td>
                            <td>79.9</td>
                            <td>3.1</td>
                            <td>79.9</td>
                            <td>3.1</td>
                            <td>79.9</td>
                            <td>3.1</td>
			</tr>
                    </tbody>
                </table>
            </div> <!-- Thumbnail -->
        </div> <!-- Container -->
    </body>
</html>
