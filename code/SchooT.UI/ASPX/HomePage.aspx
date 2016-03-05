<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="ASPX_HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">DASHBOARD</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="alert alert-info">
                            This is admin dashboard. Hope you will like it.
                        </div>
                    </div>
                </div>
                <div class="row">
            <div class=" col-md-3 col-sm-3">
                <div class="style-box-one Style-one-clr-one">
                            <a href="javascript:void(0);">
                                <i class="fa fa-calendar fa-4x"></i>
                                 <h5>Upcomming Events</h5>
                            </a>
                        </div>
                        </div>
              <div class=" col-md-3 col-sm-3">
                <div class="style-box-one Style-one-clr-two">
                            <a href="javascript:void(0);">
                                <i class="fa fa-smile-o fa-4x"></i>
                                 <h5>Upcomming Holiday</h5>
                            </a>
                        </div>
                        </div>
             <div class=" col-md-3 col-sm-3">
                <div class="style-box-one Style-one-clr-three">
                            <a href="javascript:void(0);">
								<i class="fa fa-file-text-o fa-4x"></i>
                                 <h5>Upcomming Exams</h5>
                            </a>
                        </div>
                        </div>
              <div class=" col-md-3 col-sm-3">
                <div class="style-box-one Style-one-clr-four">
                            <a href="javascript:void(0);">
								<i class="fa fa-users fa-4x"></i>
                                <h5>Total Teacher Enrolled</h5>
                            </a>
                        </div>
                        </div>      
            </div>
                 <div class="row">
                    <div class="col-md-12">
                        <div class="alert alert-danger">
                            This is a admin dashboard...
                        </div>
                    </div>
                </div>
				<div class="row">
					<span style="padding-left: 15px;"><strong>My Today's Time Plan</strong></span>
				</div>
                <div class="row">
            <div class=" col-md-4 col-sm-4">
                <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Class</th>
                                        <th>Section</th>
                                        <th>Subject</th>
										<th>Time Span</th>
                                    </tr>
                                </thead>
                                <tbody>
                                     <tr>
                                        <td>1</td>
                                        <td><span>Class 5</span></td>
                                        <td>Div A</td>
										<td>English</td>
                                        <td>9.00 - 9.30</td>
                                    </tr>
                                    <tr>
                                       <td>2</td>
                                        <td><span>Class 8</span></td>
                                        <td>Div C</td>
										<td>Maths</td>
                                        <td>10 - 10.30</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td><span>Class 6</span></td>
                                        <td>Div B</td>
										<td>Science</td>
                                        <td>12.30 - 1.00</td>
                                    </tr>
                                   
                                    <tr>
                                        <td>4</td>
                                        <td><span>Class 9</span></td>
                                        <td>Div C</td>
										<td>Science Lab</td>
                                        <td>1.30 - 2.30</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td><span>Class 10</span></td>
                                        <td>Div A</td>
										<td>P.T.</td>
                                        <td>3.00 - 4.00</td>
                                    </tr>
                                   </tbody>
                            </table>
                        </div>
                <div class="alert  alert-info">
                    <div class="current-notices">

                            <h3>Circular Notice :</h3>
                    <hr />
                    <ul>
                        <li>
Notice published by the Admin.
                        </li>
                        <li>
Notice published by the Admin.
                        </li>
                        <li>
Notice published by the Admin.
                        </li>
                        <li>
Notice published by the Admin.
                        </li>
                    </ul>
                        </div>
                        </div>

                        </div>
              
             
              <div class=" col-md-8 col-sm-8">
                  <div class="list-group">
                            <a href="javascript:void(0);" class="list-group-item active">
                                <h4 class="list-group-item-heading">About Time Table</h4>
                                <p class="list-group-item-text" style="line-height: 30px;">
                                    Dummy Text. Dummy Text. Dummy Text. Dummy Text. Dummy Text. 
									Dummy Text. Dummy Text. Dummy Text. Dummy Text. Dummy Text. 
									Dummy Text. Dummy Text. Dummy Text. Dummy Text. Dummy Text. 
									Dummy Text. Dummy Text. Dummy Text. Dummy Text. Dummy Text. 
									Dummy Text. Dummy Text. Dummy Text. Dummy Text. Dummy Text. 
                                </p>
                            </a>
                        </div>
                  <br />
                <h2> New Section</h2>
                    <br />
                    <div class="media">
      <a class="media-left" href="javascript:void(0);">
          <img src="assets/img/1.jpg" alt="" class="img-rounded" />
      </a>
      <div class="media-body">
        <h4 class="media-heading">News Title </h4>
           Dummy Text. Dummy Text. Dummy Text. Dummy Text. Dummy Text. 
									Dummy Text. Dummy Text. Dummy Text. Dummy Text. Dummy Text. 
									Dummy Text. Dummy Text. Dummy Text. Dummy Text. Dummy Text. 
									Dummy Text. Dummy Text. Dummy Text. Dummy Text. Dummy Text. 
									Dummy Text. Dummy Text. Dummy Text. Dummy Text. Dummy Text.
      </div>
    </div>
    <div class="media">
      <a class="media-left" href="javascript:void(0);">
          <img src="assets/img/2.jpg" alt="" class="img-rounded" />
      </a>
      <div class="media-body">
        <h4 class="media-heading">News Title</h4>
        Dummy Text. Dummy Text. Dummy Text. Dummy Text. Dummy Text. 
									Dummy Text. Dummy Text. Dummy Text. Dummy Text. Dummy Text. 
									Dummy Text. Dummy Text. Dummy Text. Dummy Text. Dummy Text. 
									Dummy Text. Dummy Text. Dummy Text. Dummy Text. Dummy Text. 
									Dummy Text. Dummy Text. Dummy Text. Dummy Text. Dummy Text. 
      </div>
    </div>
            </div>
            </div>
            <!-- /. PAGE INNER  -->
        </div>

</asp:Content>