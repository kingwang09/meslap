<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%String cp = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="ko">
<head>
   	<jsp:include page="../include/common_include.jsp"></jsp:include>
   	<script>
   	function showContent(id){

        var boardId = $("#link_"+id).attr("boardId");
        var opened = $("#link_"+id).attr("opened");

        console.log(typeof opened)
        console.log(opened);
        if(opened == "true"){
            console.log("slideup");
            //$("#tr_"+boardId).slideUp();
            $("#boardContent_"+boardId).slideUp();
            $("#link_"+id).attr("opened",false);

        }else{

            console.log("slidedown");
            //$("#tr_"+boardId).slideDown();
            $("#boardContent_"+boardId).slideDown();
            $("#link_"+id).attr("opened",true);
        }

    }
   	</script>
</head>
<body>
    <center>
        <jsp:include page="../include/menu_include.jsp"></jsp:include>
	</center>
        <div style="padding-top:20px;padding-left:410px">
            <img src="<%=cp %>/images/copyright.jpg" width="1200px"/>
            <!--
            <h5>
                <i class="fa fa-exclamation-circle"></i>
                이 곳에 있는 모든 자료들은 사랑과 평안의 교회가 직접 컨텐츠화 한 제작물로 지적 소유재산권을 가지고 있습니다.<br/>
                무단 배포 및 도용, 무단수정을 철저히 금지하고 있습니다.<br/>
                공유시에는 사랑과 평안의 교회 출처를 밝혀주시고 기타 문의는 메일이나 유선상으로 연락해주시면 감사하겠습니다.<br/>
                <small>전화번호 / 이메일</small>
            </h5>
            -->

    </div>
    <div style="padding-top:20px;padding-left:410px">
        <table class="table table-bordered table-condensed table-hover" style="width:1200px">
            <thead>
            <tr>
                <th>No.</th>
                <th>Title</th>
                <th>Date</th>
            </tr>
            </thead>
            <tbody>
            <!-- board Content Start -->
            <tr>
                <td>316</td>
                <td>
                    로마서 서론
                    <span class="pull-right">
                        <a id="link_316" href="javascript:showContent(316)" boardId="316" opened="false">
                            <i class="fa fa-angle-down"></i>
                        </a>
                    </span>
                </td>
                <td>2014-07-13</td>
            </tr>
            <tr id="tr_316">
                <td colspan="3">
                    <div id="boardContent_316" style="display:none">
                        <img src="<%=cp %>/images/chu.jpg"/> 테스트 화면입니다.
                    </div>
                </td>
            </tr>
            <!-- board Content End -->
            <tr>
                <td>316</td>
                <td>
                    로마서 서론
                    <span class="pull-right">
                        <a href="javascript:return">
                            <i class="fa fa-angle-down"></i>
                        </a>
                    </span>
                </td>
                <td>2014-07-13</td>
            </tr>
            </tbody>
        </table>
    </div>
</body>
</html>
