/**
 * 
 */


(() => {
	 if(location.pathname.indexOf('mypage_Main') !== -1) {
		
			/* 마일리지 등급 progress */
				var bar = new ProgressBar.Line(milageprogress, {
					  strokeWidth: 4,
					  easing: 'easeInOut',
					  duration: 1400,
					  color: '#3864ea',
					  trailColor: '#eee',
					  trailWidth: 1,
					  svgStyle: {width: '100%', height: '100%'},
					  text: {
					    style: {
					      // Text color.
					      // Default: same as stroke color (options.color)
					      color: '#999',
					      position: 'absolute',
					      right: '0',
					      top: '30px',
					      padding: 0,
					      margin: 0,
					      transform: null
					    },
					    autoStyleContainer: false
					  },
					  from: {color: '#FFEA82'},
					  to: {color: '#ED6A5A'},
					});

					bar.animate(0.8);  // Number from 0.0 to 1.0
			/*등급 progress */
					var bar = new ProgressBar.Line(gradeprogress, {
						  strokeWidth: 4,
						  easing: 'easeInOut',
						  duration: 1400,
						  color: '#3864ea',
						  trailColor: '#eee',
						  trailWidth: 1,
						  svgStyle: {width: '100%', height: '100%'},
						  text: {
						    style: {
						      // Text color.
						      // Default: same as stroke color (options.color)
						      color: '#999',
						      position: 'absolute',
						      right: '0',
						      top: '30px',
						      padding: 0,
						      margin: 0,
						      transform: null
						    },
						    autoStyleContainer: false
						  },
						  from: {color: '#FFEA82'},
						  to: {color: '#ED6A5A'},
						});

						bar.animate(0.5);  // Number from 0.0 to 1.0
		
	 } 
 })();

