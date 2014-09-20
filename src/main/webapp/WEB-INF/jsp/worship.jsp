<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%String cp = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <jsp:include page="../include/common_include.jsp"></jsp:include>    
    <style>
        body{
            /*font-family: 'Open Sans', sans-serif;*/
            font-family: 'Nanum Gothic', sans-serif;
            font-size:13px;
            line-height:20px;
            /*padding-top:48px;*/
            margin:0;
            /*background:#ddd url('../img/back.png') repeat;
            -webkit-font-smoothing: antialiased;*/
        }
        /*bootstrap width bug*/
        .row{
            margin-right:0px;
        }
    </style>
    <script>
        $(document).ready(function(){
           $(".media").on("mouseenter",function(){
             $(this).css({backgroundColor:'#ECECEC'});
           });
            $(".media").on("mouseleave",function(){
                $(this).css({backgroundColor:'white'});
            });


            $("#juboBtn").magnificPopup({
                    items:[
                        {src:'<%=cp%>/images/jubo.jpg'},
                        {src:'<%=cp%>/images/chu.jpg'}
                    ],
                    gallery:{
                        enabled:true
                    },
                    type:'image'
             });

        });

    </script>
</head>
<body>
<center>
	<jsp:include page="../include/menu_include.jsp"></jsp:include>
</center>
<div style="padding:10 410">
    <img src="<%=cp %>/images/bible_title_image.jpg"/>
</div>
<hr class="separator_top" style="height:1px">

 <div class="row" style="padding-top:50px">
        <div class="col-md-8 col-md-offset-2">
                <div class="row">
                    <div class="col-md-7">
                        <iframe width="100%" height="360" src="//www.youtube.com/embed/E-GSaWJMKaQ?feature=player_detailpage" frameborder="0" allowfullscreen></iframe>
                    </div>
                    <div class="col-md-5">
                        <span><a href="#"><img src="<%=cp%>/images/arrow_left.jpg" /></a></span>
                        <span style="padding-left:10px"><a href="#"><img src="<%=cp%>/images/arrow_right.jpg" /></a></span>

                        <div class="row">
			                <div class="col-md-12">
			                    <h4><b>교회는 회심한 사람들의 모임이다.</b></h4> <!-- Title 말씀제목 -->
			                    <h5><b>데살로니가전서 1장 3절 - 10절</b></h5>    <!-- sub 말씀구절 -->
			                    <small><b>2014.07.31</b></small>                <!-- 날짜 -->
			                </div>
			            </div>
			
			            <div class="row" style="padding-top:10px">
			                <div class="col-md-12">
			                    <h4>한송 암송구절</h4>
			                    <p style="word-wrap: break-word;width:300px">너희가 어떻게 우상을 버리고 하나님께로 돌아와서 살아계시고 참되신 하나님을 섬기는 자와</p>
			                    <small>데살로니가전서 1장 9절</small>
			                </div>
			            </div>
                        <div class="row" style="padding-top:10px">
                            <div class="col-xs-12">
                                <span><a href="#"><img src="<%=cp%>/images/audio_button.jpg"/></a></span>
                                <span><a href="#"><img src="<%=cp%>/images/text_button.jpg"/></a></span>
                                <span><button id="juboBtn" class="btn btn-xs btn-default">주보</button></span>
                            </div>
                        </div>

                    </div>
                </div>
        </div>
    </div>
    <!-- 말씀 Row -->
    <div class="row" style="padding-top:20px">
        <div class="col-md-8 col-md-offset-2">
            <p style="line-height: 2;font-size: 14px;">
                1:3 너희의 믿음의 역사와 사랑의 수고와 우리 주 예수 그리스도에 대한 소망의 인내를 우리 하나님 아버지 앞에서 끊임없이 기억함이니<br>
                1:4 하나님의 사랑하심을 받은 형제들아 너희를 택하심을 아노라<br>
                1:5 이는 우리의 복음이니 너희에게 말로만 이른 것이 아니라 또한 능력과 성령과 큰 확신으로 된 것임이라 우리가 너희 가운데서 너희를 위하여 어떤사람이 된것은 너희가 아는 바와 같으니라<br>
                1:6 또 너희는 많은 환난 가운데서 성령의 기쁨으로 말씀을 받아 우리와 주를 본받은 자가 되었으니<br>
                1:7 그러므로 너희가 마게도냐와 아가야에 있는 모든 믿는 자의 본이 되었느니라<br>
                1:8 주의 말씀이 너희에게로부터 마게도냐와 아가야에만 들릴 뿐 아니라 하나님을 향하는 너희 믿음의 소문이 각처에 펴졌으므로 우리는 아무 말도 할 것이 없노라<br>
                1:9 그들이 우리에 대하여 스스로 말하기를 우리가 어떻게 너희 가운데에 들어갔는지와 너희가 어떻게 우상을 버리고 하나님께로 돌아와서 살아계시고 참되신 하나님을 섬기는지와<br>
                1:10 또 죽은자들 가운데서 다시 살리신 이의 아들이 하늘로부터 강림하실 것을 너희가 어떻게 기다리는지를 말하니 이는 장래의 노하심에서 우리를 건지시는 예수시니라<br>
            </p>
        </div>
    </div>


    <div class="row" style="padding-top:20px">
        <div class="col-md-8 col-md-offset-2">
            <div class="pull-right">
                <select class="form-control">
                    <option>주제별 설교보기</option>
                </select>
            </div>
            <br/>
            <br/>
            <!-- 말씀 미디어 start -->
            <div class="media">
                <a class="pull-left" href="#">
                    <img class="media-object img-rounded" src="<%=cp%>/images/video1.jpg" width="160" height="120"/>
                </a>
                <div class="media-body">
                    <h4 class="media-heading">교회는 거듭난 사람들의 모임이다. <span class="label label-default">New</span></h4>
                    <p style="word-break: break-all">
                        마태복음 6장 9절~13절
                        <div class="pull-right">
                            <span><a href="#"><img src="<%=cp%>/images/audio_button.jpg"/></a></span>
                            <span><a href="#"><img src="<%=cp%>/images/text_button.jpg"/></a></span>
                        </div>
                    </p>
                </div>
            </div>
            <!-- 말씀 미디어 end -->

            <div class="media">
                <a class="pull-left" href="#">
                    <img class="media-object img-rounded" src="<%=cp%>/images/video2.jpg" width="160" height="120"/>
                </a>
                <div class="media-body">
                    <h4 class="media-heading">교회는 하나님의 택하심을 받은 사람들의 모임이다.<span class="label label-default">New</span></h4>
                    <p style="word-break: break-all">
                        마태복음 6장 9절~13절
                        <div class="pull-right">
                            <span><a href="#"><img src="<%=cp%>/images/audio_button.jpg"/></a></span>
                            <span><a href="#"><img src="<%=cp%>/images/text_button.jpg"/></a></span>
                        </div>
                    </p>
                </div>
            </div>

            <div class="media">
                <a class="pull-left" href="#">
                    <img class="media-object img-rounded" src="<%=cp%>/images/video3.jpg" width="160" height="120"/>
                </a>
                <div class="media-body">
                    <h4 class="media-heading">승리의 확신<span class="label label-default">New</span></h4>
                    <p style="word-break: break-all">
                        마태복음 6장 9절~13절
                        <div class="pull-right">
                            <span><a href="#"><img src="<%=cp%>/images/audio_button.jpg"/></a></span>
                            <span><a href="#"><img src="<%=cp%>/images/text_button.jpg"/></a></span>
                        </div>
                    </p>
                </div>
            </div>

            <div class="media">
                <a class="pull-left" href="#">
                    <img class="media-object img-rounded" src="<%=cp%>/images/video4.jpg" width="160" height="120"/>
                </a>
                <div class="media-body">
                    <h4 class="media-heading">기도의 마무리<span class="label label-default">New</span></h4>
                    <p style="word-break: break-all">
                        마태복음 6장 9절~13절
                        <div class="pull-right">
                            <span><a href="#"><img src="<%=cp%>/images/audio_button.jpg"/></a></span>
                            <span><a href="#"><img src="<%=cp%>/images/text_button.jpg"/></a></span>
                        </div>
                    </p>
                </div>
            </div><!-- media -->
            <div class="pull-right">
                <ul class="pagination">
                    <li><a href="#">&laquo;</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#">&raquo;</a></li>
                </ul>
            </div>
         </div>
    </div>

</body>
</html>