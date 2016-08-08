/*
 * windowScroll 0.1
 * window滚动插件，上下左右，可选择是否回弹。参考搜狗欢迎页面
 * 兼容等常见浏览器
 * 借鉴搜狗4.2版http://ie.sogou.com/features4.2.html
 * 如有侵权，请联系codetker@sina.com解决，谢谢
 */
;(function($, window, document, undefined) {
	//定义构造函数
	var WindowObj = function(ele, opt) {
		this.$element = ele;
		this.defaults = {
			'choose': 0,
			'list': null,
			'verticalSpeed': 1,
			'horizontalSpeed': 1,
			'objControlUl': null,
			'toLeft': null,
			'toRight': null,
			'toTop': null,
			'toBottom': null,
			'crash': true,
			'liHover': null
		};

		this.options = $.extend({}, this.defaults, opt);

	};

	//给构造函数添加方法
	WindowObj.prototype = {

		//上下滚动的方法
		verticalMove: function() {
			var
				obj = this.$element,
				speed = this.options.verticalSpeed,
				objControl = this.options.objControlUl,
				controlList = $(objControl).find('li'),
				windowHeight = $(window).height(),
				list = this.options.list,
				listMax = $(list).length,
				toTop = this.options.toTop,
				toBottom = this.options.toBottom,
				crashButton = this.options.crash,
				liHover = this.options.liHover,
				stop = 0,
				stageIndex,
				windowobject = is_chrome();


			function setCss() {
				$(obj).css({
					'width': $(window).width() + 'px',
					'height': $(window).height() * listMax + 'px'
				});
				$(list).css({
					'min-width': $(window).width() + 'px',
					'height': $(window).height() + 'px'
				});

				//初始化
				markStage();
			}
			setCss();

			function markStage() {
				getIndex();
				$(controlList).removeClass(liHover);
				$(controlList).eq(stageIndex).addClass(liHover);
			}

			function is_chrome() {
				var is_ch = navigator.userAgent.toLowerCase().indexOf('chrome') > -1;
				if (is_ch) {
					//判断webkit内核，供scrollTop兼容性使用
					return 'body';
				} else {
					//支持IE和FF
					return 'html';
				}
			}


			//阻止默认行为和冒泡
			function stopDefaultAndBubble(e) {
				e = e || window.event;
				if (e.preventDefault) {
					e.preventDefault();
				}
				e.returnValue = false;

				if (e.stopPropagation) {
					e.stopPropagation();
				}
				e.cancelBubble = true;
			}

			//得到当前的垂直位置
			function getIndex() {
				stageIndex = Math.round($(window).scrollTop() / windowHeight);
			}

			function goTop() {
				getIndex();
				scrollStage(windowobject, stageIndex, 1);
			}

			function goBottom() {
				getIndex();
				scrollStage(windowobject, stageIndex, -1);
			}
            //
			// //绑定键盘上下按键事件
			// $(document).keydown(function(event) {
			// 	/* 绑定keycode38，即向上按钮 */
			// 	if (event.keyCode == 38) {
			// 		goTop();
            //
			// 	} else if (event.keyCode == 40) { //绑定40，即向下按钮
			// 		goBottom();
			// 	}
			// });

			//绑定滑轮功能的函数
			function handle(delta) {
				getIndex();
				if (delta < 0) {
					scrollStage(windowobject, stageIndex, -1); //stageIndex为当前页码
				} else {
					scrollStage(windowobject, stageIndex, 1); //stageIndex为当前页码
				}

			}

			//判断滑轮，解决兼容性
			function wheel(event) {
				var delta = 0;
				if (!event) event = window.event;
				if (event.wheelDelta) {
					delta = event.wheelDelta;
					if (window.opera) delta = -delta;
				} else if (event.detail) {
					delta = -event.detail;
				}
				if (delta)
					handle(delta); //调用执行函数
			}

			//注册事件
			if (window.addEventListener) {
				window.addEventListener('DOMMouseScroll', wheel, false);
			}
			window.onmousewheel = document.onmousewheel = wheel;

			//绑定鼠标滚轮事件
			$(document).bind('mousedown', function(e) {
				if (e.which == 2) { //which=2代表鼠标滚轮,即为中键
					stopDefaultAndBubble(e);

					//bugfix 搜狗浏览器的ie内核只有在定时器触发这个函数才生效
					setTimeout(function() {
						stopDefaultAndBubble(e);
					}, 10);
				}
			});

			//如果有ul li控制按钮
			if (objControl !== null) {
				$(objControl).delegate('li', 'click', function() {
					stageIndex = $(this).index();
					scrollStage(windowobject, stageIndex, 0);
				});
			}

			//如果有上下控制
			$(toTop).click(function() {
				goTop();
			});
			$(toBottom).click(function() {
				goBottom();
			});

			function scrollStage(obj, stIndex, dir) {

				var
					sIndex = stIndex,
					windowobject = obj,
					direction = 0 || dir,
					target = windowHeight * sIndex;

				function move() {
					$(windowobject).animate({
						'scrollTop': target + 'px'
					}, 1000 * speed, function() {
						crash(1, target, 20, 150, -1);

						markStage();
					});
				}

				function after_crash(distant, time, termin) {
					if (distant <= 15 || time > 150) {
						stop = 1; //停止碰撞
						$(windowobject).animate({
							'scrollTop': termin + 'px'
						}, time, function() {
							stop = 0;
						});
					}
				}

				//撞击函数
				function crash(direction, termin, distant, time, aspect) {
					if (crashButton) {
						if (!stop) {
							if (direction === 1) {
								direction = 0;
								if (aspect === 1) {
									$(windowobject).animate({
										'scrollTop': '-=' + distant + 'px'
									}, time, function() {
										crash(direction, termin, distant * 0.6, time, 1);
										after_crash(distant, time, termin);
									});
								} else {
									$(windowobject).animate({
										'scrollTop': '+=' + distant + 'px'
									}, time, function() {
										crash(direction, termin, distant * 0.6, time, -1);
										after_crash(distant, time, termin);
									});
								}

							} else if (direction === 0) {
								direction = 1;
								if (aspect === 1) {
									$(windowobject).animate({
										'scrollTop': termin + 'px'
									}, time, function() {
										crash(direction, termin, distant * 0.6, time, 1);
										after_crash(distant, time, termin);
									});
								} else {
									$(windowobject).animate({
										'scrollTop': termin + 'px'
									}, time, function() {
										crash(direction, termin, distant * 0.6, time, -1);
										after_crash(distant, time, termin);
									});
								}

							}
						}
					}

				}


				if (!$(windowobject).is(':animated')) {

					switch (direction) {
						case 0:
							if ($(window).scrollTop() > target) {
								direction = -1;
								move();
							} else if ($(window).scrollTop() == windowHeight * sIndex) {
								direction = 0;
								crash(1, target, 20, 150, -1);
							} else {
								direction = 1;
								move();
							}
							break;

						case 1:
							if (sIndex === 0) {
								crash(1, target, 20, 150, 1);
							} else {
								sIndex -= 1;
								target = windowHeight * sIndex;
								move();
							}
							break;

						case -1:
							if (sIndex === listMax - 1) {
								crash(1, target, 20, 150, -1);
							} else {
								sIndex += 1;
								target = windowHeight * sIndex;
								move();
							}
							break;

						default:
					}
				}
			}

		},

		//左右滚动
		horizontalMove: function() {
			var
				obj = this.$element,
				speed = this.options.horizontalSpeed,
				objControl = this.options.objControlUl,
				controlList = $(objControl).find('li'),
				windowWidth = $(window).width(),
				list = this.options.list,
				listMax = $(list).length,
				liHover = this.options.liHover,
				toLeft = this.options.toLeft,
				toRight = this.options.toRight,
				crashButton = this.options.crash,
				pageIndex;

			function setCss() {
				$(obj).css({
					'width': windowWidth * listMax + 'px',
					'height': $(window).height() + 'px'
				});
				$(list).css({
					'width': windowWidth + 'px',
					'min-height': $(window).height() + 'px'
				});

				//初始化
				markPage();
			}
			setCss();

			function markPage() {
				getPageIndex();
				$(controlList).removeClass(liHover);
				$(controlList).eq(pageIndex).addClass(liHover);
			}

			function getPageIndex() {
				pageIndex = (-1) * Math.round(parseInt($(obj).css('margin-left')) / windowWidth);
			}

			function goLeft() {
				getPageIndex();
				scrollPage(obj, pageIndex, 1);
			}

			function goRight() {
				getPageIndex();
				scrollPage(obj, pageIndex, -1);
			}

			//绑定键盘左右按键事件
			$(document).keydown(function(event) {
				//判断event.keyCode为39（即向右按钮）
				if (event.keyCode === 39) {
					goRight();
				}
				//判断event.keyCode为37（即向左按钮
				else if (event.keyCode === 37) {
					goLeft();
				}
			});

			//如果有ul li控制按钮
			if (objControl !== null) {
				$(objControl).delegate('li', 'click', function() {
					pageIndex = $(this).index();
					scrollPage(obj, pageIndex, 0);
				});
			}

			//如有有左右控制按钮
			$(toLeft).click(function() {
				goLeft();
			});
			$(toRight).click(function() {
				goRight();
			});

			function scrollPage(obj, pageIndex, dir) {
				var
					windowobject = obj,
					direction = 0 || dir,
					dist = Math.round(parseInt($(obj).css('margin-left'))), 
					aim;

				function getAim() {
					aim = pageIndex * windowWidth * (-1);
				}

				function crash(type) {
					if (crashButton) {
						if (type === 'left') {
							$(windowobject).animate({
								'margin-left': '+=' + '50px'
							}, 500).animate({
								'margin-left': '-=' + '100px'
							}, 500).animate({
								'margin-left': '+=' + '50px'
							}, 500);
						} else {
							$(windowobject).animate({
								'margin-left': '-=' + '50px'
							}, 500).animate({
								'margin-left': '+=' + '100px'
							}, 500).animate({
								'margin-left': '-=' + '50px'
							}, 500);
						}
					}

				}

				function move() {
					$(windowobject).animate({
							'margin-left': aim + 'px' 
						},
						1000 * speed,
						function() {
							markPage();
						});
				}

				if (!$(windowobject).is(':animated')) {
					switch (direction) {

						case 0:
							getAim();
							if (dist !== aim) {
								move();
							} else {
								direction = 0;
								crash('left');
							}
							break;

						case 1:
							if (pageIndex === 0) {
								crash('left');
							} else {
								pageIndex -= 1;
								getAim();
								move();
							}
							break;

						case -1:
							if (pageIndex === (listMax - 1)) {
								crash('right');
							} else {
								pageIndex += 1;
								getAim();
								move();
							}
							break;

						default:
							break;
					}

				}
			}

		}
	};

	//绑定方法到jquery对象原型上
	$.fn.windowScroll = function(options) {

		var windowObj = new WindowObj(this, options);

		if (windowObj.options.choose === 0) {
			return windowObj.verticalMove();
		} else if (windowObj.options.choose === 1) {
			return windowObj.horizontalMove();
		} else {
			//add some functions
		}
	};
})(jQuery, window, document);