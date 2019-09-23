/*
Smoothslides 2.2.0 by Kevin Thornbloom is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License.
*/

$(function() {
	$.fn.extend({
		monthly: function(options) {
			// These are overridden by options declared in footer
			var defaults = {
				weekStart: 'Sun',
				mode: '',
				xmlUrl: '',
				target: '',
				eventList: true,
				maxWidth: false,
				startHidden: false,
				showTrigger: ''
			}

			var options = $.extend(defaults, options),
				that = this,
				uniqueId = $(this).attr('id'),
				d = new Date(),
				currentMonth = d.getMonth() + 1,
				currentYear = d.getFullYear(),
				currentDay = d.getDate(),
				monthNames = ["Jan", "Feb", "Mar", "Apr", "May", "June", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];

		if (options.maxWidth != false){
			$('#'+uniqueId).css('maxWidth',options.maxWidth);
		}

		if (options.startHidden == true){
			$('#'+uniqueId).addClass('monthly-pop').css({
				'position' : 'absolute',
				'display' : 'none'
			});
			$(document).on('focus', ''+options.showTrigger+'', function (e) {
				$('#'+uniqueId).show();
				e.preventDefault();
			});
			$(document).on('click', ''+options.showTrigger+', .monthly-pop', function (e) {
				e.stopPropagation();
				e.preventDefault();
			});
			$(document).on('click', function (e) {
				$('#'+uniqueId).hide();
			});
		}

		// Add Day Of Week Titles
		if (options.weekStart == 'Sun') {
			$('#' + uniqueId).append('<div class="monthly-day-title-wrap"><div>Sun</div><div>Mon</div><div>Tue</div><div>Wed</div><div>Thu</div><div>Fri</div><div>Sat</div></div><div class="monthly-day-wrap"></div>');
		} else if (options.weekStart == 'Mon') {
			$('#' + uniqueId).append('<div class="monthly-day-title-wrap"><div>Mon</div><div>Tue</div><div>Wed</div><div>Thu</div><div>Fri</div><div>Sat</div><div>Sun</div></div><div class="monthly-day-wrap"></div>');
		} else {
			console.log('Incorrect entry for weekStart variable.')
		}

		$('#' + uniqueId).prepend('<div class="monthly-header"><div class="monthly-header-title"></div><a href="#" class="monthly-prev"></a><a href="#" class="monthly-next"></a></div>').append('<div class="monthly-event-list"></div>');

		function daysInMonth(m, y){
			return m===2?y&3||!(y%25)&&y&15?28:29:30+(m+(m>>3)&1);
		}

		function setMonthly(m, y){
			$('#' + uniqueId).data('setMonth', m).data('setYear', y);

			// Get number of days
			var dayQty = daysInMonth(currentMonth, currentYear),
				// Get day of the week the first day is
				firstDay = new Date(m + ' 1, ' + y).getDay();


			// Remove old days
			$('#' + uniqueId + ' .monthly-day, #' + uniqueId + ' .monthly-day-blank').remove();
			// Print out the days
			if (options.mode == 'event') {
				for(var i = 0; i < dayQty; i++) {
					// Fix 0 indexed days
					var day = i + 1;
					$('#' + uniqueId + ' .monthly-day-wrap').append('<div class="monthly-day" data-number="'+day+'"><div class="monthly-day-number">'+day+'</div><div class="monthly-indicator-wrap"></div></div>');
				}
			} else {
				for(var i = 0; i < dayQty; i++) {
					// Fix 0 indexed days
					var day = i + 1;
					$('#' + uniqueId + ' .monthly-day-wrap').append('<a href="#" class="monthly-day" data-number="'+day+'"><div class="monthly-day-number">'+day+'</div><div class="monthly-indicator-wrap"></div></a>');
				}
			}

			// Set Today
			var setMonth = $('#' + uniqueId).data('setMonth'),
				setYear = $('#' + uniqueId).data('setYear');
			if (setMonth == currentMonth && setYear == currentYear) {
				$('#' + uniqueId + ' *[data-number="'+currentDay+'"]').addClass('monthly-today');
			}

			// Reset button
			if (setMonth == currentMonth && setYear == currentYear) {
				$('#' + uniqueId + ' .monthly-header-title').html(monthNames[m - 1] +' '+ y);
			} else {
				$('#' + uniqueId + ' .monthly-header-title').html(monthNames[m - 1] +' '+ y +'<a href="#" class="monthly-reset"></a> ');
			}


			// Account for empty days at start
			if(options.weekStart == 'Sun' && firstDay != 7) {
				for(var i = 0; i < firstDay; i++) {
					$('#' + uniqueId + ' .monthly-day-wrap').prepend('<div class="monthly-day-blank"><div class="monthly-day-number"></div></div>');
				}
			} else if (options.weekStart == 'Mon' && firstDay != 1) {
				for(var i = 0; i < (firstDay - 1); i++) {
					$('#' + uniqueId + ' .monthly-day-wrap').prepend('<div class="monthly-day-blank" ><div class="monthly-day-number"></div></div>');
				}
			}

			//Account for empty days at end
			var numdays = $('#' + uniqueId + ' .monthly-day').length,
				numempty = $('#' + uniqueId + ' .monthly-day-blank').length,
				totaldays = numdays + numempty,
				roundup = Math.ceil(totaldays/7) * 7,
				daysdiff = roundup - totaldays;
			if(totaldays % 7 != 0) {
				for(var i = 0; i < daysdiff; i++) {
					$('#' + uniqueId + ' .monthly-day-wrap').append('<div class="monthly-day-blank"><div class="monthly-day-number"></div></div>');
				}
			}

			// Events
			if (options.mode === "event") {
				addEvents(month, year);
			}
			var divs = $(parent + " .m-d");
			for(index = 0; index < divs.length; index += 7) {
				divs.slice(index, index + 7).wrapAll('<div class="monthly-week"></div>');
			}
		}

		function addEvent(event, setMonth, setYear) {
			// Year [0]   Month [1]   Day [2]
			var fullStartDate = _getEventDetail(event, "startdate"),
				fullEndDate = _getEventDetail(event, "enddate"),
				startArr = fullStartDate.split("-"),
				startYear = parseInt(startArr[0], 10),
				startMonth = parseInt(startArr[1], 10),
				startDay = parseInt(startArr[2], 10),
				startDayNumber = startDay,
				endDayNumber = startDay,
				showEventTitleOnDay = startDay,
				startsThisMonth = startMonth === setMonth && startYear === setYear,
				happensThisMonth = startsThisMonth;

			if(fullEndDate) {
				// If event has an end date, determine if the range overlaps this month
				var	endArr = fullEndDate.split("-"),
					endYear = parseInt(endArr[0], 10),
					endMonth = parseInt(endArr[1], 10),
					endDay = parseInt(endArr[2], 10),
					startsInPastMonth = startYear < setYear || (startMonth < setMonth && startYear === setYear),
					endsThisMonth = endMonth === setMonth && endYear === setYear,
					endsInFutureMonth = endYear > setYear || (endMonth > setMonth && endYear === setYear);
				if(startsThisMonth || endsThisMonth || (startsInPastMonth && endsInFutureMonth)) {
					happensThisMonth = true;
					startDayNumber = startsThisMonth ? startDay : 1;
					endDayNumber = endsThisMonth ? endDay : daysInMonth(setMonth, setYear);
					showEventTitleOnDay = startsThisMonth ? startDayNumber : 1;
				}
			}
			if(!happensThisMonth) {
				return;
			}

			var startTime = _getEventDetail(event, "starttime"),
				timeHtml = "",
				eventURL = _getEventDetail(event, "url"),
				eventTitle = _getEventDetail(event, "name"),
				eventClass = _getEventDetail(event, "class"),
				eventColor = _getEventDetail(event, "color"),
				eventId = _getEventDetail(event, "id"),
				customClass = eventClass ? " " + eventClass : "",
				dayStartTag = "<div",
				dayEndTags = "</span></div>";

			if(startTime) {
				var endTime = _getEventDetail(event, "endtime");
				timeHtml = '<div><div class="monthly-list-time-start">' + formatTime(startTime) + "</div>"
					+ (endTime ? '<div class="monthly-list-time-end">' + formatTime(endTime) + "</div>" : "")
					+ "</div>";
			}

			if(options.linkCalendarToEventUrl && eventURL) {
				dayStartTag = "<a" + attr("href", eventURL);
				dayEndTags = "</span></a>";
			}

			var	markupDayStart = dayStartTag
					+ attr("data-eventid", eventId)
					+ attr("title", eventTitle)
					// BG and FG colors must match for left box shadow to create seamless link between dates
					+ (eventColor ? attr("style", "background:" + eventColor + ";color:" + eventColor) : ""),
				markupListEvent = "<a"
					+ attr("href", eventURL)
					+ attr("class", "listed-event" + customClass)
					+ attr("data-eventid", eventId)
					+ (eventColor ? attr("style", "background:" + eventColor) : "")
					+ attr("title", eventTitle)
					+ ">" + eventTitle + " " + timeHtml + "</a>";
			for(var index = startDayNumber; index <= endDayNumber; index++) {
				var doShowTitle = index === showEventTitleOnDay;
				// Add to calendar view
				$(parent + ' *[data-number="' + index + '"] .monthly-indicator-wrap').append(
						markupDayStart
						+ attr("class", "monthly-event-indicator" + customClass
							// Include a class marking if this event continues from the previous day
							+ (doShowTitle ? "" : " monthly-event-continued")
							)
						+ "><span>" + (doShowTitle ? eventTitle : "") + dayEndTags);
				// Add to event list
				$(parent + ' .monthly-list-item[data-number="' + index + '"]')
					.addClass("item-has-event")
					.append(markupListEvent);
			}
		}

		function addEvents(month, year) {
			if(options.events) {
				// Prefer local events if provided
				addEventsFromString(options.events, month, year);
			} else {
				var remoteUrl = options.dataType === "xml" ? options.xmlUrl : options.jsonUrl;
				if(remoteUrl) {
					// Replace variables for month and year to load from dynamic sources
					var url = String(remoteUrl).replace("{month}", month).replace("{year}", year);
					$.get(url, {now: $.now()}, function(data) {
						addEventsFromString(data, month, year);
					}, options.dataType).fail(function() {
						console.error("Monthly.js failed to import " + remoteUrl + ". Please check for the correct path and " + options.dataType + " syntax.");
					});
				}
			}
		}

		function addEventsFromString(events, setMonth, setYear) {
			if (options.dataType === "xml") {
				$(events).find("event").each(function(index, event) {
					addEvent(event, setMonth, setYear);
				});
			} else if (options.dataType === "json") {
				$.each(events.monthly, function(index, event) {
					addEvent(event, setMonth, setYear);
				});
			}
		}
		// Set the calendar the first time
		setMonthly(currentMonth, currentYear);

		// Advance months
		$(document.body).on('click', '#'+uniqueId+' .monthly-next', function (e) {
			var setMonth = $('#' + uniqueId).data('setMonth'),
				setYear = $('#' + uniqueId).data('setYear');
			if (setMonth == 12) {
				var newMonth = 1,
					newYear = setYear + 1;
				setMonthly(newMonth, newYear);
			} else {
				var newMonth = setMonth + 1,
					newYear = setYear;
				setMonthly(newMonth, newYear);
			}
			e.preventDefault();
		});

		// Go back in months
		$(document.body).on('click', '#'+uniqueId+' .monthly-prev', function (e) {
			var setMonth = $('#' + uniqueId).data('setMonth'),
				setYear = $('#' + uniqueId).data('setYear');
			if (setMonth == 1) {
				var newMonth = 12,
					newYear = setYear - 1;
				setMonthly(newMonth, newYear);
			} else {
				var newMonth = setMonth - 1,
					newYear = setYear;
				setMonthly(newMonth, newYear);
			}
			e.preventDefault();
		});

		// Reset Month
		$(document.body).on('click', '#'+uniqueId+' .monthly-reset', function (e) {
			setMonthly(currentMonth, currentYear);
			e.preventDefault();
			e.stopPropagation();
		});

		// Hover an event within the list & highlight the days it occurs on
		$(document.body).on('mouseover', '#'+uniqueId+' .monthly-event-list a', function (e) {
			var whichEvent = $(this).data('eventid');
			$('#'+uniqueId+' .monthly-day').css('opacity','.5');
			$('#'+uniqueId+' .monthly-day .monthly-event-indicator').css('opacity','.25');
			$('#'+uniqueId+' .monthly-day .monthly-event-indicator[data-eventid="'+whichEvent+'"]').css('opacity','1').parents('.monthly-day').css('opacity','1');
		});
		$(document.body).on('mouseout', '#'+uniqueId+' .monthly-event-list a', function (e) {
			$('#'+uniqueId+' .monthly-day, #'+uniqueId+' .monthly-day .monthly-event-indicator').css('opacity','1');
		});

		// Click to select date
		$(document.body).on('click', '#'+uniqueId+' a.monthly-day', function (e) {
			var whichDay = $(this).data('number'),
				setMonth = $('#' + uniqueId).data('setMonth'),
				setYear = $('#' + uniqueId).data('setYear');
			$(''+options.target+'').val(setMonth+'/'+whichDay+'/'+setYear);
			if(options.startHidden == true) {
				$('#'+uniqueId).hide();
			}
			e.preventDefault();
		});
		}
	});
}); 