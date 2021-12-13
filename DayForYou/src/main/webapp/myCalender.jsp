<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <meta name="description" content="">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

  <!-- Title -->
  <title>DayForYou-Calender</title>

  <!-- Favicon -->
  <link rel="icon" href="img/core-img/favicon.ico">

  <!-- Style CSS -->
  <link rel="stylesheet" href="style.css">

  <!-- �߰� CSS-->
  <style>
    body {
      padding: 0;
      margin: 0;
    }

    div {
      box-sizing: border-box;
    }

    /*������ ī�װ�(my page)*/
    .titleContainer {
      padding: 0;
      background-color: #ffffff;
      margin-bottom: 10px;
    }

    #mypage-category {
      padding-left: 10px;
      font-size: 10px;
      color: gray;
    }

    .name {
      padding-left: 10px;
    }

    /* alert badge */
    .circle {
      display: inline-block;
      width: 5px;
      height: 5px;
      border-radius: 2.5px;
      background-color: #ff0000;
      position: absolute;
      top: -5px;
      left: 110%;
    }

    /* ��� �ؽ�Ʈ */
    .green {
      color: #24855b;
    }

    .wrap {
      background-color: #F8F8F8;
    }

    /* ������ */
    .greenContainer {
      height: 132px;
      background-color: #24855b;

      display: flex;
      align-items: flex-end;
      padding: 16px;
    }

    .greenContainer .name {
      font-size: 20px;
      font-weight: bold;
      color: #ffffff;
    }

    .greenContainer .modify {
      margin-left: auto;
    }

    /* �ܰ���� , ��ǰ�ı� , ������ �ڽ� */
    .summaryContainer {
      background-color: white;
      display: flex;
      padding: 21px 16px;
      height: 90px;
      margin-bottom: 10px;
    }

    /* �ܰ���� , ��ǰ�ı� , ������ */
    .summaryContainer .item {
      flex-grow: 1
    }

    /* ��� ���� */
    .summaryContainer .number {
      font-size: 19px;
      font-weight: bold;
      color: #24855b;
    }

    /* �ؽ�Ʈ */
    .summaryContainer .item>div:nth-child(2) {
      font-size: 13px;
    }

    /* ================== �ֹ�/�����ȸ �ڽ� ���� ==================== */
    .shippingStatusContainer {
      padding: 21px 16px;
      background-color: white;
      margin-bottom: 10px;
    }

    /* �ֹ�/�����ȸ Ÿ��Ʋ */
    .shippingStatusContainer .title {
      font-size: 16px;
      font-weight: bold;
      margin-bottom: 15px;
    }

    /* ��ٱ��� �����Ϸ� ����� ����Ȯ�� [�ο�] */
    .shippingStatusContainer .status {
      display: flex;
      justify-content: space-between;
      margin-bottom: 21px;
    }

    /* ��ٱ��� �����Ϸ� ����� ����Ȯ�� [������]  */
    .shippingStatusContainer .item {
      display: flex;
    }

    .shippingStatusContainer .number {
      font-size: 31px;
      font-weight: 500;
      text-align: center;
    }

    .shippingStatusContainer .text {
      font-size: 12px;
      font-weight: normal;
      color: #c2c2c2;
      text-align: center;
    }

    .shippingStatusContainer .icon {
      display: flex;
      align-items: center;
      padding: 20px;
      width: 16px;
      height: 16px;
    }


    /*=================== �ֹ���� ~ ���ѻ�ǰ ����Ʈ ==================*/
    .listContainer {
      padding: 0;
      background-color: #ffffff;
      margin-bottom: 10px;
    }

    .listContainer .item {
      display: flex;
      align-items: center;
      padding: 16px;
      color: black;
      text-decoration: none;
      height: 56px;
      box-sizing: border-box;
    }

    .listContainer .icon {
      margin-right: 14px;
    }

    .listContainer .text {
      font-size: 16px;
      position: relative;
    }

    .listContainer .right {
      margin-left: auto;
    }


    /*=================== �������� ���� ������ ���� �κ� ================*/
    .listContainer .smallLight {
      font-size: 1px;
      color: #c2c2c2;
    }

    .listContainer .smallLight>span {
      margin-left: 10px;
    }

    .listContainer .right .blct {
      font-size: 14px;
      font-weight: bold;
      margin-right: 5px;
    }



    /* �������� �̿�ȳ� ������ */
    .infoContainer {
      background-color: white;
      display: flex;
      height: 100px;
      margin-bottom: 10px;
    }

    .infoContainer .item {
      flex-grow: 1;
      display: flex;
      align-items: center;
      justify-content: center;
      flex-direction: column;
      font-size: 13px;
      text-decoration: none;
      color: black;
    }

    .infoContainer .item>div:first-child {
      margin-bottom: 2px;
    }




    /* .listContainer .item:hover{*/
    /*   background-color: #f8f8f8; 
    }*/
    /*.infoContainer .item:hover{*/
    /*   background-color: #f8f8f8; */
    /*}*/
  </style>
  <!--fullcaleder-->
  <link href='../fullcalender/lib/main.min.css' rel='stylesheet' />
  <script src='../fullcalender/lib/main.min.js'></script>

  <!-- ȭ�� �ػ󵵿� ���� ���� ũ�� ����(����� ����) -->
  <meta name="viewport"
    content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">

  <script>

    document.addEventListener('DOMContentLoaded', function () {
      var calendarEl = document.getElementById('calendar');

      var calendar = new FullCalendar.Calendar(calendarEl, {
        schedulerLicenseKey: 'CC-Attribution-NonCommercial-NoDerivatives',
        //now: '2020-09-07', // �̰� ��Ȱ��ȭ�ϸ� ���� ��¥�� ����
        //scrollTime: '00:00', // undo default 6am scrollTime
        height: '750px', // Ķ���� ����
        expendRows: true, // ȭ�鿡 �°� ���� ����
        editable: true, // �޷¿� ������ �̺�Ʈ�� �����Ҽ� �ִ���
        selectable: true, // �޷¿� ǥ�õ� �̺�Ʈ �巡�� ��������.
        aspectRatio: 1.8, // ����, ���� ����
        dayMaxEvents: true, // �̺�Ʈ�� �����Ǹ� ���� ���� (+ �� �������� ǥ��)
        locale: 'ko', // �ѱ��� ����
        buttonText: {
          month: 'Ķ����',
          today: '����',
          list: '����'
        },
        headerToolbar: { //Ķ���� ��� ���� �κ� ��ư ����
          right: 'dayGridMonth,today,listDay',
          center: 'prev,next',
          left: 'title'
        },
        dayMaxEventRows: true,
        views: {
          timeGrid: {
            dayMaxEventRows: 5
          }
        },

        eventAdd: function (obj) { // �̺�Ʈ�� �߰��Ǹ� �߻��ϴ� �̺�Ʈ
          alert("���� �߰�");
        },
        eventChange: function (obj) { // �̺�Ʈ�� �����Ǹ� �߻��ϴ� �̺�Ʈ
          alert("���� ����");
        },
        eventRemove: function (obj) { // �̺�Ʈ�� �����Ǹ� �߻��ϴ� �̺�Ʈ
          alert("���� ����");
        
        },
        
        select: function (arg) { // Ķ�������� �巡�׷� �̺�Ʈ�� ������ �� �ִ�.

          var title = prompt('Event Title:');

          if (title) {

            calendar.addEvent({

              title: title,
              start: arg.start,
              end: arg.end,
              allDay: arg.allDay,
              color : 'green'
            })
          //   $.ajax({
          //     type: "POST",
          //     url: "#",
          //     data: {
          //       'event-title-give': title,
          //       'event_start_data-give': dataFormat(arg.start),
          //       'event_end_data-give': dataFormat(arg.end),
          //       'event_allday': allDay,
          //       'event_color': color

          //     },
          //     success: function (response) {
          //       alert('������ �߰��Ǿ����ϴ�.');
          //     }
          //   })

           }

          calendar.unselect()
        },
        //eventClick: function( eventClickInfo ) {
        //   var url = "eventClick.html";
        //                   var name = "remove test";
        //                   var option = "width = 500, height = 500, top = 100, left = 200, location = no"
        //                   var windowObj = window.open(url, name, option);
        //                   windowObj.cal = calendar;
        //                   windowObj.arg = arg;
        //  },

       eventClick: function (info) {
          let delcal = confirm(info.event.title + "������ �����Ͻðڽ��ϱ�?");
          if (delcal == true) {
         info.event.remove();
            // $.ajax({
            //       type: "POST",
            //       url: "#",
            //       data: {
            //         'event-title-give': title,
            //         'event_start_data-give': dataFormat(arg.start),
            //         'event_end_data-give': dataFormat(arg.end),
            //         'event_allday': allDay,
            //         'event_color': color
    
            //       },
            //       success: function (response) {
            //         alert('������ �����Ǿ����ϴ�.');
            //       }
            //     })
          }
        },
 
        resourceAreaHeaderContent: '����',
        resources: [
          { id: 'a', title: '����', eventColor: "blue" },
          { id: 'b', title: '�', eventColor: 'orange' },
          { id: 'c', title: '���', eventColor: 'green' },
          { id: 'd', title: '�߿�����', eventColor: 'red' },
          { id: 'e', title: '��Ÿ', eventColor: 'purple' },
        ],
        events: [
          { id: '1', resourceId: 'a', start: '2021-12-06', end: '2021-12-06', title: 'UX/UI' },
          { id: '2', resourceId: 'a', start: '2021-12-07', end: '2021-12-12', title: '������Ʈ' },
          { id: '3', resourceId: 'e', start: '2021-12-10', end: '2021-12-10', title: 'ī�尪 ������' },
          { id: '4', resourceId: 'd', start: '2021-12-11', end: '2021-12-11', title: '����' },
          { id: '5', resourceId: 'a', start: '2021-12-13', end: '2021-12-19', title: '������Ʈ' },
          { id: '6', resourceId: 'a', start: '2021-12-20', end: '2021-12-22', title: '������Ʈ' },
          { id: '7', resourceId: 'd', start: '2021-12-21', end: '2021-12-22', title: '��ǥ' },
          { id: '8', resourceId: 'b', start: '2021-12-08', end: '2021-12-08', title: '������' },
          { id: '9', resourceId: 'b', start: '2021-12-15', end: '2021-12-15', title: '������' },
          { id: '10', resourceId: 'b', start: '2021-12-18', end: '2021-12-18', title: '����' },
          { id: '11', resourceId: 'e', start: '2021-12-15', end: '2021-12-15', title: '����' },
          { id: '12', resourceId: 'c', start: '2021-12-17', end: '2021-12-17', title: '��ȭ' },
          { id: '13', resourceId: 'd', start: '2021-12-24', end: '2021-12-25T23:59:59', title: 'ũ�������� ��Ƽ' },
          { id: '14', resourceId: 'c', start: '2021-12-06', end: '2021-12-06', title: '���� ����' },
          { id: '14', resourceId: 'c', start: '2021-12-21', end: '2021-12-21', title: '��Ÿ ����' }
        ]
      });

      /*�̺�Ʈ ������ �������� Ajax�ڵ� Ŭ���ڵ�(�ʿ伺�� ���� ������ ��.)
      events:funtion(info, successCollback, failureCallback){
        $.ajax({
        url: '$(pageContext.request.contextPath)/getEvent.do',
        datatype: 'json',
        success:
          funtion(result) {
            let events = [];

            if(result != null){
              $.each(result, funtion(index, element){
                let enddate = element.enddate;
                  if(enddate == null){
                    enddate = element.startdate;
                  }

                  let startdate = moment(element.startdate).format('YYYY-MM-DD');
                  let enddate = moment(enddate).format('YYYY-MM-DD');
                  len realmname = element.realmname; // �̺κ� ��������� �����ͺ��̽� todo_cate�÷������� ��ü�������� �˾ƺ���.

                  if(realmname == "����"){
                    events.push({
                      title: element.title,
                      start: startdate,
                      end: enddate,
                      url: "$(pageContext.request.contextPath)/detail.do? seq= " + element.seq,
                      color: "blue"
                    }); // ���� ī�װ�.

                  else if(realmname == "�"){
                    events.push({
                      title: element.title,
                      start: startdate,
                      end: enddate,
                      url: "$(pageContext.request.contextPath)/detail.do? seq= " + element.seq,
                      color: "orange"
                    }); // � ī�װ�.
                  
                  else if(realmname == "���"){
                    events.push({
                      title: element.title,
                      start: startdate,
                      end: enddate,
                      url: "$(pageContext.request.contextPath)/detail.do? seq= " + element.seq,
                      color: "green"
                    }); // ��� ī�װ�.

                  else if(realmname == "�߿�����"){
                    events.push({
                      title: element.title,
                      start: startdate,
                      end: enddate,
                      url: "$(pageContext.request.contextPath)/detail.do? seq= " + element.seq,
                      color: "red"
                    }); // �߿����� ī�װ�.

                  else if(realmname == "��Ÿ"){
                    events.push({
                      title: element.title,
                      start: startdate,
                      end: enddate,
                      url: "$(pageContext.request.contextPath)/detail.do? seq= " + element.seq,
                      color: "purple"
                    }); // ��Ÿ ī�װ�.
                  }

              }) // .each()
              console.log(events);
            } // if end
            successCallback(events);
          } // success:funtion end
        }); // ajax end
      } //event:funtion end
      */




      calendar.render();
    });



  </script>
  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
      font-size: 13px;
    }

    #calendar {
      max-width: 1100px;
      margin: 0px auto;
    }
  </style>
</head>

<body>

  <!-- Preloader -->
  <div id="preloader">
    <div class="preload-content">
      <div id="original-load"></div>
    </div>
  </div>

  <!-- Subscribe Modal -->
  <div class="subscribe-newsletter-area">
    <div class="modal fade" id="subsModal" tabindex="-1" role="dialog" aria-labelledby="subsModal" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
              aria-hidden="true">&times;</span></button>
          <div class="modal-body">
            <h5 class="title">�Խñ� �˻�</h5>
            <form action="#" class="newsletterForm" method="post">
              <input type="email" name="email" id="subscribesForm2" placeholder="Your e-mail here">
              <button type="submit" class="btn original-btn">Subscribe</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- ##### Header Area Start ##### -->
  <header class="header-area">

    <!-- Top Header Area -->
    <div class="top-header">
      <div class="container h-100">
        <div class="row h-100 align-items-center">
          <!-- Breaking News Area -->
          <div class="col-12 col-sm-8">
            <div class="breaking-news-area">
              <div id="breakingNewsTicker" class="ticker">
                <ul>
                  <li><a href="#">12�� �ֿ� �������� Ȯ���ϱ�</a></li>
                  <li><a href="#">���� ���� �α��ִ� ç���� �ѷ�����</a></li>
                  <li><a href="#">Ȩ ȭ�鿡�� �� ���� �̺�Ʈ�� Ȯ���ϼ���!</a></li>
                  <li><a href="#">���������� �����ϰ� ���������� �غ�����</a></li>
                  <li><a href="#">��õ �ǿ��� ������ �´� ç���� �˾ƺ���!</a></li>
                </ul>
              </div>
            </div>
          </div>
          <!-- Top Social Area -->
          <!--  <div class="col-12 col-sm-4">
                      <div class="top-social-area">
                          <a href="#" data-toggle="tooltip" data-placement="bottom" title="Pinterest"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                          <a href="#" data-toggle="tooltip" data-placement="bottom" title="Facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                          <a href="#" data-toggle="tooltip" data-placement="bottom" title="Twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                          <a href="#" data-toggle="tooltip" data-placement="bottom" title="Dribbble"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                          <a href="#" data-toggle="tooltip" data-placement="bottom" title="Behance"><i class="fa fa-behance" aria-hidden="true"></i></a>
                          <a href="#" data-toggle="tooltip" data-placement="bottom" title="Linkedin"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                      </div>
                  </div> -->
        </div>
      </div>
    </div>


    <!-- Logo Area -->
    <div class="logo-area text-center">
      <div class="container h-100">
        <div class="row h-100 align-items-center">
          <div class="col-12">
            <a href="index.html" class="original-logo"><img src="img/main-img/logo3.png" alt=""></a>
          </div>
        </div>
      </div>
    </div>

    <!-- Nav Area -->
    <div class="original-nav-area" id="stickyNav">
      <div class="classy-nav-container breakpoint-off">
        <div class="container">
          <!-- Classy Menu -->
          <nav class="classy-navbar justify-content-between">

            <!-- Subscribe btn -->
            <!--    <div class="subscribe-btn tag">
                          <input type = "text" name = "text" placeholder = "�±� �˻�"  class="btn subscribe-btn" data-toggle="modal" data-target="#subsModal">
                      </div> -->

            <!-- Navbar Toggler -->
            <div class="classy-navbar-toggler">
              <span class="navbarToggler"><span></span><span></span><span></span></span>
            </div>

            <!-- Menu -->
            <div class="classy-menu" id="originalNav">
              <!-- close btn -->
              <div class="classycloseIcon">
                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
              </div>

              <!-- Nav Start -->
              <div class="classynav">
                <button class="button4">Logout</button>
                <ul>
                  <li><a href="main.html">Home</a></li>
                  <li><a href="index.html">Calendar</a>
                    <ul class="dropdown">
                      <li><a href="index.html">Calendar</a></li>
                      <li><a href="Diarylist.html">Diary</a></li>
                      <!--  <li><a href="single-post.html">Single Post</a></li>
                                          <li><a href="contact.html">Contact</a></li>
                                          <li><a href="coming-soon.html">Coming Soon</a></li> -->
                    </ul>
                  </li>
                  <li><a href="#">Challenge</a>
                    <ul class="dropdown">
                      <li><a href="#">All</a></li>
                      <li><a href="#">Group</a></li>
                      <li><a href="#">Individual</a>
                        <!--  <ul class="dropdown">
                                                  <li><a href="#">Catagory 2</a></li>
                                                  <li><a href="#">Catagory 2</a></li>
                                                  <li><a href="#">Catagory 2</a>
                                                      <ul class="dropdown">
                                                          <li><a href="#">Catagory 3</a></li>
                                                          <li><a href="#">Catagory 3</a></li>
                                                          <li><a href="#">Catagory 3</a></li>
                                                          <li><a href="#">Catagory 3</a></li>
                                                          <li><a href="#">Catagory 3</a></li>
                                                      </ul>
                                                  </li>
                                                  <li><a href="#">Catagory 2</a></li>
                                                  <li><a href="#">Catagory 2</a></li>
                                              </ul> -->
                      </li>
                      <!--  <li><a href="#">Catagory 1</a></li>
                                          <li><a href="#">Catagory 1</a></li> -->
                    </ul>
                  </li>
                  <li><a href="#">Portfolio</a>
                    <ul class="dropdown">
                      <li><a>Statics</a></li>
                      <li><a>Sample</a></li>
                      <li><a>Create</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Board</a>
                    <ul class="dropdown">
                      <li><a href="index.html">Community</a></li>
                      <li><a>Notice</a></li>
                      <li><a>Q&A</a></li>
                    </ul>
                  </li>

                  <!-- <li><a href="about-us.html">Portfolio</a></li> -->

                  <!--  
                                  <li><a href="#">Board</a>
                                      <div class="megamenu">
                                          <ul class="single-mega cn-col-4">
                                              <li class="title">Headline 1</li>
                                              <li><a href="#">Community</a></li>
                                              <li><a href="#">Notice</a></li>
                                              <li><a href="#">Q&A</a></li>
                                              <li><a href="#">Mega Menu Item 4</a></li>
                                              <li><a href="#">Mega Menu Item 5</a></li>
                                          </ul> -->
                  <!--  <ul class="single-mega cn-col-4">
                                              <li class="title">Headline 2</li>
                                              <li><a href="#">Mega Menu Item 1</a></li>
                                              <li><a href="#">Mega Menu Item 2</a></li>
                                              <li><a href="#">Mega Menu Item 3</a></li>
                                              <li><a href="#">Mega Menu Item 4</a></li>
                                              <li><a href="#">Mega Menu Item 5</a></li>
                                          </ul>
                                          <ul class="single-mega cn-col-4">
                                              <li class="title">Headline 3</li>
                                              <li><a href="#">Mega Menu Item 1</a></li>
                                              <li><a href="#">Mega Menu Item 2</a></li>
                                              <li><a href="#">Mega Menu Item 3</a></li>
                                              <li><a href="#">Mega Menu Item 4</a></li>
                                              <li><a href="#">Mega Menu Item 5</a></li>
                                          </ul>
                                          <ul class="single-mega cn-col-4">
                                              <li class="title">Headline 4</li>
                                              <li><a href="#">Mega Menu Item 1</a></li>
                                              <li><a href="#">Mega Menu Item 2</a></li>
                                              <li><a href="#">Mega Menu Item 3</a></li>
                                              <li><a href="#">Mega Menu Item 4</a></li>
                                              <li><a href="#">Mega Menu Item 5</a></li>
                                          </ul> -->
                  <!--        </div>
                                  </li> -->
                  <li><a href="contact.html">About Us</a></li>
                </ul>

                <!-- Search Form  -->
                <div id="search-wrapper">
                  <form action="#">
                    <input type="text" id="search" placeholder="Search something...">
                    <div id="close-icon"></div>
                    <input class="d-none" type="submit" value="">
                  </form>
                </div>
              </div>
              <!-- Nav End -->
            </div>
          </nav>
        </div>
      </div>
    </div>
  </header>
  <!-- ##### Header Area End ##### -->

  <!-- ##### Calendar Area Start #####-->

  <div id='calendar'></div>


  

  <!-- ##### Calendar Area End #####-->

  <div>
    <div class="infoContainer">
      <a href="#" class="item">
        <div>������ / ���ǻ���</div>
        <div>abc12345@dayforyou.com</div>
      </a>
    </div>
  </div>

  <!-- ##### Instagram Feed Area Start ##### -->
  <div class="instagram-feed-area">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <div class="insta-title">
            <h5>Follow us @ DayFoyYou_instagram</h5>
          </div>
        </div>
      </div>
    </div>
    <!-- Instagram Slides -->
    <div class="instagram-slides owl-carousel">
      <!-- Single Insta Feed -->
      <div class="single-insta-feed">
        <img src="img/instagram-img/1.png" alt="">
        <!-- Hover Effects -->
        <div class="hover-effects">
          <a href="#" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
        </div>
      </div>
      <!-- Single Insta Feed -->
      <div class="single-insta-feed">
        <img src="img/instagram-img/2.png" alt="">
        <!-- Hover Effects -->
        <div class="hover-effects">
          <a href="#" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
        </div>
      </div>
      <!-- Single Insta Feed -->
      <div class="single-insta-feed">
        <img src="img/instagram-img/3.png" alt="">
        <!-- Hover Effects -->
        <div class="hover-effects">
          <a href="#" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
        </div>
      </div>
      <!-- Single Insta Feed -->
      <div class="single-insta-feed">
        <img src="img/instagram-img/4.png" alt="">
        <!-- Hover Effects -->
        <div class="hover-effects">
          <a href="#" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
        </div>
      </div>
      <!-- Single Insta Feed -->
      <div class="single-insta-feed">
        <img src="img/instagram-img/5.png" alt="">
        <!-- Hover Effects -->
        <div class="hover-effects">
          <a href="#" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
        </div>
      </div>
      <!-- Single Insta Feed -->
      <div class="single-insta-feed">
        <img src="img/instagram-img/6.png" alt="">
        <!-- Hover Effects -->
        <div class="hover-effects">
          <a href="#" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
        </div>
      </div>
      <!-- Single Insta Feed -->
      <div class="single-insta-feed">
        <img src="img/instagram-img/7.png" alt="">
        <!-- Hover Effects -->
        <div class="hover-effects">
          <a href="#" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
        </div>
      </div>
    </div>
  </div>
  <!-- ##### Instagram Feed Area End ##### -->

  <!-- ##### Footer Area Start ##### -->
  <footer class="footer-area text-center">
    <div class="container">
      <div class="row">
        <div class="col-12">

          <!-- Footer Nav Area -->
          <div class="classy-nav-container breakpoint-off">
            <!-- Classy Menu -->
            <nav class="classy-navbar justify-content-center">

              <!-- Navbar Toggler -->
              <div class="classy-navbar-toggler">
                <span class="navbarToggler"><span></span><span></span><span></span></span>
              </div>

              <!-- Menu -->
              <div class="classy-menu">

                <!-- close btn -->
                <div class="classycloseIcon">
                  <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                </div>

                <!-- Nav Start -->
                <div class="classynav">
                  <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Lifestyle</a></li>
                    <li><a href="#">travel</a></li>
                    <li><a href="#">Music</a></li>
                    <li><a href="#">Contact</a></li>
                  </ul>
                </div>
                <!-- Nav End -->
              </div>
            </nav>
          </div>

          <!-- Footer Social Area -->
          <div class="footer-social-area mt-30">
            <a href="#" data-toggle="tooltip" data-placement="top" title="Pinterest"><i class="fa fa-pinterest"
                aria-hidden="true"></i></a>
            <a href="#" data-toggle="tooltip" data-placement="top" title="Facebook"><i class="fa fa-facebook"
                aria-hidden="true"></i></a>
            <a href="#" data-toggle="tooltip" data-placement="top" title="Twitter"><i class="fa fa-twitter"
                aria-hidden="true"></i></a>
            <a href="#" data-toggle="tooltip" data-placement="top" title="Dribbble"><i class="fa fa-dribbble"
                aria-hidden="true"></i></a>
            <a href="#" data-toggle="tooltip" data-placement="top" title="Behance"><i class="fa fa-behance"
                aria-hidden="true"></i></a>
            <a href="#" data-toggle="tooltip" data-placement="top" title="Linkedin"><i class="fa fa-linkedin"
                aria-hidden="true"></i></a>
          </div>
        </div>
      </div>
    </div>

    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
    <script>document.write(new Date().getFullYear());</script> �̿��� | ��������ó����ħ <a href="https://colorlib.com"
      target="_blank">000-0000-0000</a>
    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

  </footer>
  <!-- ##### Footer Area End ##### -->

  <!-- jQuery (Necessary for All JavaScript Plugins) -->
  <script src="js/jquery/jquery-2.2.4.min.js"></script>
  <!-- Popper js -->
  <script src="js/popper.min.js"></script>
  <!-- Bootstrap js -->
  <script src="js/bootstrap.min.js"></script>
  <!-- Plugins js -->
  <script src="js/plugins.js"></script>
  <!-- Active js -->
  <script src="js/active.js"></script>


</body>

</html>