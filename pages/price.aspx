﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="price.aspx.cs" Inherits="pages_price" MasterPageFile="~/masterPage/HomePage.master" %>


<asp:Content ContentPlaceHolderID="CPH1" runat="server">
    
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header" style="margin: 15px 0 20px;">Giá</h3>
                <button type="button" class="btn btn-primary pull-right" style="margin-top: -64px; margin-right: 65px">Thêm</button>
                <button type="button" class="btn btn-primary pull-right" style="margin-top: -64px;">Lưu</button>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <!-- add apartment -->
        <div class="row">
            <div class="row">
                <div class="col col-sm-4 col-md-4 col-lg-4">
                    <div class="form-group">
                        <p>Mã giá</p>
                        <input disabled="disabled" type="text" class="form-control" style="margin-top: -10px;" id="" placeholder="" />
                    </div>
                </div>
                <div class="col col-sm-4 col-md-4 col-lg-4">
                    <div class="form-group">
                        <p>Giá điện/ký</p>
                        <input type="text" class="form-control" style="margin-top: -10px;" id="" placeholder="Nhập giá điện" />
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col col-sm-4 col-md-4 col-lg-4">
                    <div class="form-group">
                        <p>Giá nước/ký</p>
                        <input type="text" class="form-control" style="margin-top: -10px;" id="" placeholder="Nhập giá nước" />
                    </div>
                </div>
                <div class="col col-sm-4 col-md-4 col-lg-4">
                    <div class="form-group">
                        <p>Giá internet/tháng</p>
                        <input type="text" class="form-control" style="margin-top: -10px;" id="" placeholder="Nhập giá internet" />
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col col-sm-4 col-md-4 col-lg-4">
                    <div class="form-group">
                        <p>Giá rác/tháng</p>
                        <input type="text" class="form-control" style="margin-top: -10px;" id="" placeholder="Nhập giá rác" />
                    </div>
                </div>
                <div class="col col-sm-4 col-md-4 col-lg-4">
                    <div class="form-group">
                        <p>Tình trạng</p>
                        <select class="form-control" style="margin-top: -10px;">
                            <option>Đang hoạt động</option>
                            <option>Không hoạt động</option>
                        </select>
                    </div>
                </div>
            </div>


        </div>
        <div class="modal fade" id="changePass" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Đổi mật khẩu</h4>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col col-sm-6 col-md-6 col-lg-6">
                                <div class="form-group">
                                    <a>Mật khẩu củ : </a>
                                    <input type="text" class="form-control" id="" placeholder="Nhập mật khẩu cũ" />
                                </div>
                            </div>

                            <div class="col col-sm-6 col-md-6 col-lg-6">
                                <div class="form-group">
                                    <a>Nhập mật khẩu mới  : </a>
                                    <input type="text" class="form-control" id="" placeholder="Nhập mật khẩu mới" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                        <button type="button" class="btn btn-primary">Lưu thay đổi</button>
                    </div>

                </div>
            </div>
        </div>

        <div class="row">
            <div class="x_panel">
                <div class="x_content" style="margin-top: -20px;">
                    <div class="row">
                        <div class="col col-sm-3 col-md-3 col-lg-3 pull-right">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Tìm kiếm" name="srch-term" id="srch-term">
                                <div class="input-group-btn">
                                    <button class="btn btn-primary" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br>
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example" style="margin-top: -13px;">
                        <thead>
                            <tr class="info">
                                <th>Mã giá </th>
                                <th>Giá điện</th>
                                <th>Giá nước</th>
                                <th>Giá internet</th>
                                <th>Giá rác</th>
                                <th>Tình trạng </th>
                                <th class=" no-link last"><span class="nobr">Thao tác</span>
                                </th>
                            </tr>
                        </thead>

                        <tbody>
                            <tr class="even pointer">
                                <td class=" ">001</td>
                                <td class=" ">2500</td>
                                <td class=" ">5000</td>
                                <td class=" ">150,000</td>
                                <td class=" ">30,000</td>
                                <td class="a-right a-right ">Đang hoạt động</td>
                                <td class=" last"><a href="#"><i data-toggle="tooltip" title="Sửa" class="glyphicon glyphicon-edit"></i></a>| <a href="#"><i data-toggle="tooltip" title="Xóa" class="glyphicon glyphicon-remove"></i></a>
                                </td>
                            </tr>
                            <tr class="even pointer">
                                <td class=" ">003</td>
                                <td class=" ">2500</td>
                                <td class=" ">5000</td>
                                <td class=" ">150,000</td>
                                <td class=" ">30,000</td>
                                <td class="a-right a-right ">Đang hoạt động</td>
                                <td class=" last"><a href="#"><i data-toggle="tooltip" title="Sửa" class="glyphicon glyphicon-edit"></i></a>| <a href="#"><i data-toggle="tooltip" title="Xóa" class="glyphicon glyphicon-remove"></i></a>
                                </td>
                            </tr>
                            <tr class="even pointer">
                                <td class=" ">004</td>
                                <td class=" ">2500</td>
                                <td class=" ">5000</td>
                                <td class=" ">150,000</td>
                                <td class=" ">30,000</td>
                                <td class="a-right a-right ">Đang hoạt động</td>
                                <td class=" last"><a href="#"><i data-toggle="tooltip" title="Sửa" class="glyphicon glyphicon-edit"></i></a>| <a href="#"><i data-toggle="tooltip" title="Xóa" class="glyphicon glyphicon-remove"></i></a>
                                </td>
                            </tr>
                            <tr class="even pointer">
                                <td class=" ">005</td>
                                <td class=" ">2500</td>
                                <td class=" ">5000</td>
                                <td class=" ">150,000</td>
                                <td class=" ">30,000</td>
                                <td class="a-right a-right ">Đang hoạt động</td>
                                <td class=" last"><a href="#"><i data-toggle="tooltip" title="Sửa" class="glyphicon glyphicon-edit"></i></a>| <a href="#"><i data-toggle="tooltip" title="Xóa" class="glyphicon glyphicon-remove"></i></a>
                                </td>
                            </tr>
                            <tr class="odd pointer">
                                <td class=" ">002</td>
                                <td class=" ">2500</td>
                                <td class=" ">5000</td>
                                <td class=" ">150,000</td>
                                <td class=" ">30,000</td>
                                <td class="a-right a-right ">Không hoạt động</td>
                                <td class=" last"><a href="#"><i data-toggle="tooltip" title="Sửa" class="glyphicon glyphicon-edit"></i></a>|  <a href="#"><i data-toggle="tooltip" title="Xóa" class="glyphicon glyphicon-remove"></i></a>
                                </td>
                                <script>
                                    $(document).ready(function () {
                                        $('[data-toggle="tooltip"]').tooltip();
                                    });
                            </script>
                            </tr>

                        </tbody>

                    </table>
                </div>
            </div>


            <br />

            <!--footer -->
            <hr/>
            <address class="text-center">
                <strong>Tên Công Ty</strong><br />
                Linh Trung
                   
                <br />
                Quận Thủ Đức
                   
                <br />
                Phone : 097800000
               
            </address>
            <address class="text-center">
                <strong>Phạm Thị Ngọc Thư</strong><br />
                <a href="#">thu225656294@gmail.com</a>
            </address>

            <!--/. footer  -->

        </div>

   
</asp:Content>
