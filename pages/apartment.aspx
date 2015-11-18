<%@ Page Language="C#" AutoEventWireup="true" CodeFile="apartment.aspx.cs" Inherits="pages_apartment" MasterPageFile="~/masterPage/HomePage.master" %>



<asp:Content ContentPlaceHolderID="CPH1" runat="server">

    <div class="row">
        <div class="col-lg-12">
            <h3 class="page-header" style="margin: 15px 0 20px;">Căn hộ</h3>
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
                    <p>Mã căn hộ</p>
                    <input disabled="disabled" type="text" class="form-control" style="margin-top: -10px;" id="" />
                </div>
            </div>
            <div class="col col-sm-4 col-md-4 col-lg-4">
                <div class="form-group">
                    <p>Tên căn hộ</p>
                    <input type="text" class="form-control" style="margin-top: -10px;" id="" placeholder="Nhập tên căn hộ" />
                </div>
            </div>

        </div>
        <div class="row">
            <div class="col col-sm-4 col-md-4 col-lg-4">
                <div class="form-group">
                    <p>Giá bán</p>
                    <input type="text" class="form-control" style="margin-top: -10px;" id="" placeholder="Nhập giá bán" />
                </div>
            </div>
            <div class="col col-sm-4 col-md-4 col-lg-4">
                <div class="form-group">
                    <p>Giá thuê</p>
                    <input type="text" class="form-control" style="margin-top: -10px;" id="" placeholder="Nhập giá thuê" />
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col col-sm-4 col-md-4 col-lg-4">
                <div class="form-group">
                    <p>Kích thước</p>
                    <input type="text" class="form-control" style="margin-top: -10px;" id="" placeholder="Kích thước" />
                </div>
            </div>
            <div class="col col-sm-4 col-md-4 col-lg-4">
                <div class="form-group">
                    <p>Tình trạng</p>
                    <select class="form-control" style="margin-top: -10px;">
                        <option>Trống</option>
                        <option>Đang thuê</option>
                        <option>Đã bán</option>
                    </select>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col col-sm-4 col-md-4 col-lg-4">
                <div class="form-group" style="margin-top: -10px;">
                    <p>Loại căn hộ</p>
                    <select class="form-control">
                        <option>VIP</option>
                        <option>Bình thường</option>
                    </select>
                </div>
            </div>
            <div class="col col-sm-4 col-md-4 col-lg-4">
                <div class="form-group">
                    <p>Tầng</p>
                    <select class="form-control" style="margin-top: -10px;">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                        <option>6</option>
                        <option>7</option>
                        <option>8</option>
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
                            <th>Mã </th>
                            <th>Tên </th>
                            <th>Loại</th>
                            <th>Kích thước </th>
                            <th>Giá bán </th>
                            <th>Giá thuê </th>
                            <th>Tầng </th>
                            <th>Tình trạng </th>
                            <th class=" no-link last"><span class="nobr">Thao tác</span>
                            </th>
                        </tr>
                    </thead>

                    <tbody>
                        <tr class="even pointer">
                            <td class=" ">0001</td>
                            <td class=" ">A10</td>
                            <td class=" ">VIP</td>
                            <td class=" ">20x10</td>
                            <td class=" ">70,000,000</td>
                            <td class=" ">5,000,000</td>
                            <td class=" ">1</td>
                            <td class="a-right a-right ">Trống</td>
                            <td class=" last"><a href="#"><i data-toggle="tooltip" title="Sửa" class="glyphicon glyphicon-edit"></i></a>| <a href="#"><i data-toggle="tooltip" title="Xóa" class="glyphicon glyphicon-remove"></i></a>
                            </td>
                        </tr>
                        <tr class="even pointer">
                            <td class=" ">0003</td>
                            <td class=" ">A07</td>
                            <td class=" ">VIP</td>
                            <td class=" ">20x10</td>
                            <td class=" ">70,000,000</td>
                            <td class=" ">5,000,000</td>
                            <td class=" ">1</td>
                            <td class="a-right a-right ">Trống</td>
                            <td class=" last"><a href="#"><i data-toggle="tooltip" title="Sửa" class="glyphicon glyphicon-edit"></i></a>| <a href="#"><i data-toggle="tooltip" title="Xóa" class="glyphicon glyphicon-remove"></i></a>
                            </td>
                        </tr>
                        <tr class="even pointer">
                            <td class=" ">0004</td>
                            <td class=" ">A08</td>
                            <td class=" ">VIP</td>
                            <td class=" ">20x10</td>
                            <td class=" ">70,000,000</td>
                            <td class=" ">5,000,000</td>
                            <td class=" ">1</td>
                            <td class="a-right a-right ">Trống</td>
                            <td class=" last"><a href="#"><i data-toggle="tooltip" title="Sửa" class="glyphicon glyphicon-edit"></i></a>| <a href="#"><i data-toggle="tooltip" title="Xóa" class="glyphicon glyphicon-remove"></i></a>
                            </td>
                        </tr>
                        <tr class="even pointer">
                            <td class=" ">0005</td>
                            <td class=" ">A09</td>
                            <td class=" ">VIP</td>
                            <td class=" ">20x10</td>
                            <td class=" ">70,000,000</td>
                            <td class=" ">5,000,000</td>
                            <td class=" ">1</td>
                            <td class="a-right a-right ">Trống</td>
                            <td class=" last"><a href="#"><i data-toggle="tooltip" title="Sửa" class="glyphicon glyphicon-edit"></i></a>| <a href="#"><i data-toggle="tooltip" title="Xóa" class="glyphicon glyphicon-remove"></i></a>
                            </td>
                        </tr>

                        <tr class="odd pointer">
                            <td class=" ">0002</td>
                            <td class=" ">A04</td>
                            <td class=" ">Thường</td>
                            <td class=" ">20x10 </td>
                            <td class=" ">50,000,000</td>
                            <td class=" ">4,000,000</td>
                            <td class=" ">1</td>
                            <td class="a-right a-right ">Đang thuê</td>
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
        <hr>
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
