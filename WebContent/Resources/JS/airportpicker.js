document.querySelector('section.content').insertAdjacentHTML('afterend', 
 `
<div class="pop-up-window-type1 airport-picker-window"  id="airport-picker-window">
<div class="row">
<p class="window-title">
공항선택
<i class="fas fa-times btn-close"></i>
</p>
</div>
<div class="airport-picker clearfix">
<div class="flight-list clearfix">
<div class="list-nation" name="list-nation">
<ul>

<li class="active" id="nation-1">한국</li>
<li id="nation-2">동북아시아</li>
<li id="nation-3">동남아시아</li>
<li id="nation-4">미주 (미국/캐나다/중남미)</li>
<li id="nation-5">유럽</li>
<li id="nation-6">대양주/사이판/팔라우</li>
<li id="nation-7">몽골/중앙아시아</li>
</ul>
</div>
<div class="list-airport scrollable">
<div class="national-listbox active" name="national-listbox" id="nation-1-list">
<h6>취항지</h6>
<ul>
<li>
<span class="cname">서울 / 인천</span>
<span class="abbr">ICN</span>
</li>
<li>
<span class="cname">서울 / 김포</span>
<span class="abbr">GMP</span>
</li>
<li>
<span class="cname">무안</span>
<span class="abbr">MWX</span>
</li>
<li>
<span class="cname">진주 / 사천</span>
<span class="abbr">HIN</span>
</li>
<li>
<span class="cname">여수</span>
<span class="abbr">RSU</span>
</li>
<li>
<span class="cname">광주</span>
<span class="abbr">KWJ</span>
</li>
<li>
<span class="cname">청주</span>
<span class="abbr">CJJ</span>
</li>
<li>
<span class="cname">제주</span>
<span class="abbr">CJU</span>
</li>
<li>
<span class="cname">대구</span>
<span class="abbr">TAE</span>
</li>
<li>
<span class="cname">부산/김해</span>
<span class="abbr">PUS</span>
</li>
<li>
<span class="cname">울산</span>
<span class="abbr">USN</span>
</li>
</ul>
</div>
<div class="national-listbox" name="national-listbox" id="nation-2-list">
<h6>취항지</h6>
<ul>
<li>
<span class="cname">가오슝[高雄]</span>
<span class="abbr">KHH</span>
</li>
<li>
<span class="cname">광저우[廣州]</span>
<span class="abbr">CAN</span>
</li>
<li>
<span class="cname">구이린[桂林]</span>
<span class="abbr">KWL</span>
</li>
<li>
<span class="cname">나고야</span>
<span class="abbr">NGO</span>
</li>
<li>
<span class="cname">난징[南京]</span>
<span class="abbr">NKG</span>
</li>
<li>
<span class="cname">다롄[大連]</span>
<span class="abbr">DLC</span>
</li>
<li>
<span class="cname">도쿄 / 나리타</span>
<span class="abbr">NRT</span>
</li>
<li>
<span class="cname">도쿄 / 하네다</span>
<span class="abbr">HND</span>
</li>
<li>
<span class="cname">미야자키</span>
<span class="abbr">KMI</span>
</li>
<li>
<span class="cname">베이징[北京]</span>
<span class="abbr">PEK</span>
</li>
<li>
<span class="cname">삿포로</span>
<span class="abbr">CTS</span>
</li>
<li>
<span class="cname">상하이[上海] / 푸동</span>
<span class="abbr">PVG</span>
</li>
<li>
<span class="cname">상하이[上海] / 홍차오</span>
<span class="abbr">SHA</span>
</li>
<li>
<span class="cname">선양[瀋陽]</span>
<span class="abbr">SHE</span>
</li>
<li>
<span class="cname">선전[深圳]</span>
<span class="abbr">SZX</span>
</li>
<li>
<span class="cname">센다이</span>
<span class="abbr">SDJ</span>
</li>
<li>
<span class="cname">시안[西安]</span>
<span class="abbr">XIY</span>
</li>
<li>
<span class="cname">옌지[延吉]</span>
<span class="abbr">YNJ</span>
</li>
<li>
<span class="cname">옌청[盐城]</span>
<span class="abbr">YNZ</span>
</li>
<li>
<span class="cname">옌타이[煙臺]</span>
<span class="abbr">YNT</span>
</li>
<li>
<span class="cname">오사카 / 간사이</span>
<span class="abbr">KIX</span>
</li>
<li>
<span class="cname">오키나와</span>
<span class="abbr">OKA</span>
</li>
<li>
<span class="cname">웨이하이[威海]</span>
<span class="abbr">WEH</span>
</li>
<li>
<span class="cname">창사[長沙]</span>
<span class="abbr">CSX</span>
</li>
<li>
<span class="cname">창춘[長春]</span>
<span class="abbr">CGQ</span>
</li>
<li>
<span class="cname">청두[成都]</span>
<span class="abbr">CTU</span>
</li>
<li>
<span class="cname">충칭[重慶]</span>
<span class="abbr">CKG</span>
</li>
<li>
<span class="cname">칭다오[靑島]</span>
<span class="abbr">TAO</span>
</li>
<li>
<span class="cname">타이베이[台北]</span>
<span class="abbr">TPE</span>
</li>
<li>
<span class="cname">타이중[台中]</span>
<span class="abbr">RMQ</span>
</li>
<li>
<span class="cname">톈진[天津]</span>
<span class="abbr">TSN</span>
</li>
<li>
<span class="cname">하얼빈[哈爾濱]</span>
<span class="abbr">HRB</span>
</li>
<li>
<span class="cname">항저우[杭州]</span>
<span class="abbr">HGH</span>
</li>
<li>
<span class="cname">홍콩[香港]</span>
<span class="abbr">HKG</span>
</li>
<li>
<span class="cname">후쿠오카</span>
<span class="abbr">FUK</span>
</li>
</ul>
<h6>그외</h6>
<ul>
<li>
<span class="cname">구마모토</span>
<span class="abbr">KMJ</span>
</li>
<li>
<span class="cname">나가사키</span>
<span class="abbr">NGS</span>
</li>
<li>
<span class="cname">다카마쓰</span>
<span class="abbr">TAK</span>
</li>
<li>
<span class="cname">도야마</span>
<span class="abbr">TOY</span>
</li>
<li>
<span class="cname">시즈오카</span>
<span class="abbr">FSZ</span>
</li>
<li>
<span class="cname">요나고</span>
<span class="abbr">YGJ</span>
</li>
<li>
<span class="cname">우베</span>
<span class="abbr">UBJ</span>
</li>
<li>
<span class="cname">히로시마</span>
<span class="abbr">HIJ</span>
</li>
</ul>
</div>
<div class="national-listbox" name="national-listbox" id="nation-3-list">
<h6>취항지</h6>
<ul>
<li>
<span class="cname">다낭</span>
<span class="abbr">DAD</span>
</li>
<li>
<span class="cname">마닐라</span>
<span class="abbr">MNL</span>
</li>
<li>
<span class="cname">방콕</span>
<span class="abbr">BKK</span>
</li>
<li>
<span class="cname">세부</span>
<span class="abbr">CEB</span>
</li>
<li>
<span class="cname">싱가포르</span>
<span class="abbr">SIN</span>
</li>
<li>
<span class="cname">자카르타</span>
<span class="abbr">CGK</span>
</li>
<li>
<span class="cname">클락 / 앙헬레스</span>
<span class="abbr">CRK</span>
</li>
<li>
<span class="cname">푸껫</span>
<span class="abbr">HKT</span>
</li>
<li>
<span class="cname">푸꾸옥</span>
<span class="abbr">PQC</span>
</li>
<li>
<span class="cname">프놈펜</span>
<span class="abbr">PNH</span>
</li>
<li>
<span class="cname">하노이</span>
<span class="abbr">HAN</span>
</li>
<li>
<span class="cname">호찌민</span>
<span class="abbr">SGN</span>
</li>
</ul>
</div>
<div class="national-listbox" name="national-listbox" id="nation-4-list">
<h6>취항지</h6>
<ul>
<li>
<span class="cname">뉴욕 / 존 F 케네디, <em>NY</em></span>
<span class="abbr">JFK</span>
</li>
<li>
<span class="cname">로스앤젤레스, <em>CA</em></span>
<span class="abbr">LAX</span>
</li>
<li>
<span class="cname">샌프란시스코, <em>CA</em></span>
<span class="abbr">SFO</span>
</li>
<li>
<span class="cname">시애틀, <em>WA</em></span>
<span class="abbr">SEA</span>
</li>
<li>
<span class="cname">시카고 / 오헤어, <em>IL</em></span>
<span class="abbr">ORD</span>
</li>
<li>
<span class="cname">호놀룰루, <em>HI</em></span>
<span class="abbr">HNL</span>
</li>
</ul>
<h6>그외</h6>
<ul>
<li>
<span class="cname">과달라하라</span>
<span class="abbr">GDL</span>
</li>
<li>
<span class="cname">그랜 래피스, <em>MI</em></span>
<span class="abbr">GRR</span>
</li>
<li>
<span class="cname">그린베이, <em>WI</em></span>
<span class="abbr">GRB</span>
</li>
<li>
<span class="cname">내슈빌, <em>TN</em></span>
<span class="abbr">BNA</span>
</li>
<li>
<span class="cname">녹스빌, <em>TN</em></span>
<span class="abbr">TYS</span>
</li>
<li>
<span class="cname">뉴올리언스, <em>LA</em></span>
<span class="abbr">MSY</span>
</li>
<li>
<span class="cname">댈러스, <em>TX</em></span>
<span class="abbr">DFW</span>
</li>
<li>
<span class="cname">데이턴, <em>OH</em></span>
<span class="abbr">DAY</span>
</li>
<li>
<span class="cname">덴버, <em>CO</em></span>
<span class="abbr">DEN</span>
</li>
<li>
<span class="cname">드모인, <em>IA</em></span>
<span class="abbr">DSM</span>
</li>
<li>
<span class="cname">디트로이트, <em>MI</em></span>
<span class="abbr">DTW</span>
</li>
<li>
<span class="cname">라스베이거스, <em>NV</em></span>
<span class="abbr">LAS</span>
</li>
<li>
<span class="cname">랜싱, <em>MI</em></span>
<span class="abbr">LAN</span>
</li>
<li>
<span class="cname">렉싱턴, <em>KY</em></span>
<span class="abbr">LEX</span>
</li>
<li>
<span class="cname">로체스터, <em>NY</em></span>
<span class="abbr">ROC</span>
</li>
<li>
<span class="cname">롤리-더럼, <em>NC</em></span>
<span class="abbr">RDU</span>
</li>
<li>
<span class="cname">루이빌, <em>KY</em></span>
<span class="abbr">SDF</span>
</li>
<li>
<span class="cname">리노, <em>NV</em></span>
<span class="abbr">RNO</span>
</li>
<li>
<span class="cname">리치몬드, <em>VA</em></span>
<span class="abbr">RIC</span>
</li>
<li>
<span class="cname">리틀 락, <em>NE</em></span>
<span class="abbr">LIT</span>
</li>
<li>
<span class="cname">리후에, <em>HI</em></span>
<span class="abbr">LIH</span>
</li>
<li>
<span class="cname">마이애미, <em>FL</em></span>
<span class="abbr">MIA</span>
</li>
<li>
<span class="cname">매디슨, <em>WI</em></span>
<span class="abbr">MSN</span>
</li>
<li>
<span class="cname">멕시코시티</span>
<span class="abbr">MEX</span>
</li>
<li>
<span class="cname">멤피스, <em>TN</em></span>
<span class="abbr">MEM</span>
</li>
<li>
<span class="cname">몬터레이, <em>CA</em></span>
<span class="abbr">MRY</span>
</li>
<li>
<span class="cname">몬트리올, <em>QC</em></span>
<span class="abbr">YUL</span>
</li>
<li>
<span class="cname">몰린, <em>IL</em></span>
<span class="abbr">MLI</span>
</li>
<li>
<span class="cname">미니애폴리스, <em>MN</em></span>
<span class="abbr">MSP</span>
</li>
<li>
<span class="cname">밀워키, <em>WI</em></span>
<span class="abbr">MKE</span>
</li>
<li>
<span class="cname">버밍엄, <em>AL</em></span>
<span class="abbr">BHM</span>
</li>
<li>
<span class="cname">버팔로, <em>NY</em></span>
<span class="abbr">BUF</span>
</li>
<li>
<span class="cname">벌링턴, <em>VT</em></span>
<span class="abbr">BTV</span>
</li>
<li>
<span class="cname">벤쿠버, <em>BC</em></span>
<span class="abbr">YVR</span>
</li>
<li>
<span class="cname">보스턴, <em>MA</em></span>
<span class="abbr">BOS</span>
</li>
<li>
<span class="cname">보이시, <em>ID</em></span>
<span class="abbr">BOI</span>
</li>
<li>
<span class="cname">워싱턴/벌티모어, <em>MD</em></span>
<span class="abbr">BWI</span>
</li>
<li>
<span class="cname">빅토리아, <em>BC</em></span>
<span class="abbr">YYJ</span>
</li>
<li>
<span class="cname">사우스 밴드, <em>IN</em></span>
<span class="abbr">SBN</span>
</li>
<li>
<span class="cname">새기노, <em>MI</em></span>
<span class="abbr">MBS</span>
</li>
<li>
<span class="cname">새너제이, <em>CA</em></span>
<span class="abbr">SJC</span>
</li>
<li>
<span class="cname">새크라멘토, <em>CA</em></span>
<span class="abbr">SMF</span>
</li>
<li>
<span class="cname">샌디에이고, <em>CA</em></span>
<span class="abbr">SAN</span>
</li>
<li>
<span class="cname">샌안토니오, <em>TX</em></span>
<span class="abbr">SAT</span>
</li>
<li>
<span class="cname">샬럿, <em>NC</em></span>
<span class="abbr">CLT</span>
</li>
<li>
<span class="cname">세인트루이스, <em>MO</em></span>
<span class="abbr">STL</span>
</li>
<li>
<span class="cname">솔트레이크시티, <em>UT</em></span>
<span class="abbr">SLC</span>
</li>
<li>
<span class="cname">스포캔, <em>WA</em></span>
<span class="abbr">GEG</span>
</li>
<li>
<span class="cname">스프링필드, <em>MO</em></span>
<span class="abbr">SGF</span>
</li>
<li>
<span class="cname">시더래피즈, <em>IA</em></span>
<span class="abbr">CID</span>
</li>
<li>
<span class="cname">시러큐스, <em>NY</em></span>
<span class="abbr">SYR</span>
</li>
<li>
<span class="cname">신시내티, <em>OH</em></span>
<span class="abbr">CVG</span>
</li>
<li>
<span class="cname">애틀란타, <em>GA</em></span>
<span class="abbr">ATL</span>
</li>
<li>
<span class="cname">애플톤, <em>WI</em></span>
<span class="abbr">ATW</span>
</li>
<li>
<span class="cname">앨버커키, <em>NM</em></span>
<span class="abbr">ABQ</span>
</li>
<li>
<span class="cname">앵커리지, <em>AK</em></span>
<span class="abbr">ANC</span>
</li>
<li>
<span class="cname">야키마, <em>WA</em></span>
<span class="abbr">YKM</span>
</li>
<li>
<span class="cname">에드먼턴, <em>AB</em></span>
<span class="abbr">YEG</span>
</li>
<li>
<span class="cname">오마하, <em>NE</em></span>
<span class="abbr">OMA</span>
</li>
<li>
<span class="cname">오스틴, <em>TX</em></span>
<span class="abbr">AUS</span>
</li>
<li>
<span class="cname">오클라호마 시티, <em>OK</em></span>
<span class="abbr">OKC</span>
</li>
<li>
<span class="cname">오타와, <em>ON</em></span>
<span class="abbr">YOW</span>
</li>
<li>
<span class="cname">올랜도, <em>FL</em></span>
<span class="abbr">MCO</span>
</li>
<li>
<span class="cname">워싱턴/덜레스, <em>DC</em></span>
<span class="abbr">IAD</span>
</li>
<li>
<span class="cname">웨스트팜비치, <em>FL</em></span>
<span class="abbr">PBI</span>
</li>
<li>
<span class="cname">위치토, <em>KS</em></span>
<span class="abbr">ICT</span>
</li>
<li>
<span class="cname">유진, <em>OR</em></span>
<span class="abbr">EUG</span>
</li>
<li>
<span class="cname">인디애나폴리스, <em>IN</em></span>
<span class="abbr">IND</span>
</li>
<li>
<span class="cname">잭슨빌, <em>FL</em></span>
<span class="abbr">JAX</span>
</li>
<li>
<span class="cname">찰스턴, <em>SC</em></span>
<span class="abbr">CHS</span>
</li>
<li>
<span class="cname">카훌루이, <em>HI</em></span>
<span class="abbr">OGG</span>
</li>
<li>
<span class="cname">칸쿤</span>
<span class="abbr">CUN</span>
</li>
<li>
<span class="cname">캔자스시티, <em>MO</em></span>
<span class="abbr">MCI</span>
</li>
<li>
<span class="cname">캔튼 애크론, <em>OH</em></span>
<span class="abbr">CAK</span>
</li>
<li>
<span class="cname">캘거리, <em>AB</em></span>
<span class="abbr">YYC</span>
</li>
<li>
<span class="cname">코나, <em>HI</em></span>
<span class="abbr">KOA</span>
</li>
<li>
<span class="cname">콜럼버스, <em>OH</em></span>
<span class="abbr">CMH</span>
</li>
<li>
<span class="cname">콜로라도스프링스, <em>CO</em></span>
<span class="abbr">COS</span>
</li>
<li>
<span class="cname">클리블랜드, <em>OH</em></span>
<span class="abbr">CLE</span>
</li>
<li>
<span class="cname">탬파, <em>FL</em></span>
<span class="abbr">TPA</span>
</li>
<li>
<span class="cname">털사, <em>OK</em></span>
<span class="abbr">TUL</span>
</li>
<li>
<span class="cname">토론토, <em>ON</em></span>
<span class="abbr">YYZ</span>
</li>
<li>
<span class="cname">투손, <em>AZ</em></span>
<span class="abbr">TUS</span>
</li>
<li>
<span class="cname">파나마 시티</span>
<span class="abbr">PTY</span>
</li>
<li>
<span class="cname">패스코, <em>WA</em></span>
<span class="abbr">PSC</span>
</li>
<li>
<span class="cname">페어뱅크스, <em>AK</em></span>
<span class="abbr">FAI</span>
</li>
<li>
<span class="cname">포트로더데일, <em>FL</em></span>
<span class="abbr">FLL</span>
</li>
<li>
<span class="cname">포트마이어스, <em>FL</em></span>
<span class="abbr">RSW</span>
</li>
<li>
<span class="cname">포틀랜드, <em>OR</em></span>
<span class="abbr">PDX</span>
</li>
<li>
<span class="cname">포틀랜드, <em>ME</em></span>
<span class="abbr">PWM</span>
</li>
<li>
<span class="cname">프레즈노, <em>CA</em></span>
<span class="abbr">FAT</span>
</li>
<li>
<span class="cname">피닉스, <em>AZ</em></span>
<span class="abbr">PHX</span>
</li>
<li>
<span class="cname">피츠버그, <em>PA</em></span>
<span class="abbr">PIT</span>
</li>
<li>
<span class="cname">필라델피아, <em>PA</em></span>
<span class="abbr">PHL</span>
</li>
<li>
<span class="cname">헬리팩스, <em>NS</em></span>
<span class="abbr">YHZ</span>
</li>
<li>
<span class="cname">휴스턴, <em>TX</em></span>
<span class="abbr">IAH</span>
</li>
<li>
<span class="cname">아카풀코</span>
<span class="abbr">ACA</span>
</li>
<li>
<span class="cname">왈라 왈라, <em>WA</em></span>
<span class="abbr">ALW</span>
</li>
<li>
<span class="cname">칼라마주, <em>MI</em></span>
<span class="abbr">AZO</span>
</li>
<li>
<span class="cname">레온 과나후아토</span>
<span class="abbr">BJX</span>
</li>
<li>
<span class="cname">벨링햄, <em>WA</em></span>
<span class="abbr">BLI</span>
</li>
<li>
<span class="cname">보고타</span>
<span class="abbr">BOG</span>
</li>
<li>
<span class="cname">부에노스 아이레스</span>
<span class="abbr">EZE</span>
</li>
<li>
<span class="cname">보즈맨, <em>MT</em></span>
<span class="abbr">BZN</span>
</li>
<li>
<span class="cname">체터누가, <em>TN</em></span>
<span class="abbr">CHA</span>
</li>
<li>
<span class="cname">샴페인 어바나, <em>IL</em></span>
<span class="abbr">CMI</span>
</li>
<li>
<span class="cname">콜롬비아, <em>MO</em></span>
<span class="abbr">COU</span>
</li>
<li>
<span class="cname">코퍼스 크리스티, <em>TX</em></span>
<span class="abbr">CRP</span>
</li>
<li>
<span class="cname">웨나치, <em>WA</em></span>
<span class="abbr">EAT</span>
</li>
<li>
<span class="cname">엘 패소, <em>TX</em></span>
<span class="abbr">ELP</span>
</li>
<li>
<span class="cname">에반스빌, <em>IN</em></span>
<span class="abbr">EVV</span>
</li>
<li>
<span class="cname">플린트, <em>MI</em></span>
<span class="abbr">FNT</span>
</li>
<li>
<span class="cname">포트웨인, <em>IN</em></span>
<span class="abbr">FWA</span>
</li>
<li>
<span class="cname">헌츠빌, <em>AL</em></span>
<span class="abbr">HSV</span>
</li>
<li>
<span class="cname">이사카, <em>NY</em></span>
<span class="abbr">ITH</span>
</li>
<li>
<span class="cname">힐로, <em>HI</em></span>
<span class="abbr">ITO</span>
</li>
<li>
<span class="cname">잭슨, <em>WY</em></span>
<span class="abbr">JAN</span>
</li>
<li>
<span class="cname">러벅, <em>TX</em></span>
<span class="abbr">LBB</span>
</li>
<li>
<span class="cname">링컨, <em>NE</em></span>
<span class="abbr">LNK</span>
</li>
<li>
<span class="cname">라나이, <em>HI</em></span>
<span class="abbr">LNY</span>
</li>
<li>
<span class="cname">모빌, <em>AL</em></span>
<span class="abbr">MOB</span>
</li>
<li>
<span class="cname">몬테레이</span>
<span class="abbr">MTY</span>
</li>
<li>
<span class="cname">피오리아, <em>IL</em></span>
<span class="abbr">PIA</span>
</li>
<li>
<span class="cname">풀먼, <em>WA</em></span>
<span class="abbr">PUW</span>
</li>
<li>
<span class="cname">로체스터, <em>MN</em></span>
<span class="abbr">RST</span>
</li>
<li>
<span class="cname">산티아고</span>
<span class="abbr">SCL</span>
</li>
<li>
<span class="cname">톨리도, <em>OH</em></span>
<span class="abbr">TOL</span>
</li>
<li>
<span class="cname">트래버스시티, <em>MI</em></span>
<span class="abbr">TVC</span>
</li>
</ul>
</div>
<div class="national-listbox" name="national-listbox" id="nation-5-list">
<h6>취항지</h6>
<ul>
<li>
<span class="cname">프랑크푸르트</span>
<span class="abbr">FRA</span>
</li>
<li>
<span class="cname">파리 / 샤를 드 골</span>
<span class="abbr">CDG</span>
</li>
<li>
<span class="cname">런던 / 히드로</span>
<span class="abbr">LHR</span>
</li>
<li>
<span class="cname">로마 / 다빈치</span>
<span class="abbr">FCO</span>
</li>
<li>
<span class="cname">바르셀로나</span>
<span class="abbr">BCN</span>
</li>
<li>
<span class="cname">리스본</span>
<span class="abbr">LIS</span>
</li>
<li>
<span class="cname">베네치아</span>
<span class="abbr">VCE</span>
</li>
<li>
<span class="cname">이스탄불 </span>
<span class="abbr">IST</span>
</li>
</ul>
<h6>그외</h6>
<ul>
<li>
<span class="cname">그라츠</span>
<span class="abbr">GRZ</span>
</li>
<li>
<span class="cname">나폴리</span>
<span class="abbr">NAP</span>
</li>
<li>
<span class="cname">뉘른베르크</span>
<span class="abbr">NUE</span>
</li>
<li>
<span class="cname">뉴캐슬</span>
<span class="abbr">NCL</span>
</li>
<li>
<span class="cname">니스</span>
<span class="abbr">NCE</span>
</li>
<li>
<span class="cname">뒤셀도르프</span>
<span class="abbr">DUS</span>
</li>
<li>
<span class="cname">드레스덴</span>
<span class="abbr">DRS</span>
</li>
<li>
<span class="cname">라이프치히</span>
<span class="abbr">LEJ</span>
</li>
<li>
<span class="cname">리옹</span>
<span class="abbr">LYS</span>
</li>
<li>
<span class="cname">마드리드</span>
<span class="abbr">MAD</span>
</li>
<li>
<span class="cname">마르세이유</span>
<span class="abbr">MRS</span>
</li>
<li>
<span class="cname">맨체스터</span>
<span class="abbr">MAN</span>
</li>
<li>
<span class="cname">뮌스터</span>
<span class="abbr">FMO</span>
</li>
<li>
<span class="cname">뮌헨</span>
<span class="abbr">MUC</span>
</li>
<li>
<span class="cname">밀라노 / 리나떼</span>
<span class="abbr">LIN</span>
</li>
<li>
<span class="cname">밀라노 / 말펜사</span>
<span class="abbr">MXP</span>
</li>
<li>
<span class="cname">베로나</span>
<span class="abbr">VRN</span>
</li>
<li>
<span class="cname">베를린 / 테겔</span>
<span class="abbr">TXL</span>
</li>
<li>
<span class="cname">벨파스트</span>
<span class="abbr">BHD</span>
</li>
<li>
<span class="cname">볼로냐</span>
<span class="abbr">BLQ</span>
</li>
<li>
<span class="cname">브레멘</span>
<span class="abbr">BRE</span>
</li>
<li>
<span class="cname">브뤼셀</span>
<span class="abbr">BRU</span>
</li>
<li>
<span class="cname">비엔나</span>
<span class="abbr">VIE</span>
</li>
<li>
<span class="cname">슈투트가르트</span>
<span class="abbr">STR</span>
</li>
<li>
<span class="cname">스트라스부르</span>
<span class="abbr">XER</span>
</li>
<li>
<span class="cname">아테네</span>
<span class="abbr">ATH</span>
</li>
<li>
<span class="cname">암스테르담</span>
<span class="abbr">AMS</span>
</li>
<li>
<span class="cname">앙카라 / 에센보아</span>
<span class="abbr">ESB</span>
</li>
<li>
<span class="cname">애버딘</span>
<span class="abbr">ABZ</span>
</li>
<li>
<span class="cname">에든버러</span>
<span class="abbr">EDI</span>
</li>
<li>
<span class="cname">카이세리</span>
<span class="abbr">ASR</span>
</li>
<li>
<span class="cname">쾰른</span>
<span class="abbr">QKL</span>
</li>
<li>
<span class="cname">투린</span>
<span class="abbr">TRN</span>
</li>
<li>
<span class="cname">툴루즈</span>
<span class="abbr">TLS</span>
</li>
<li>
<span class="cname">피렌체</span>
<span class="abbr">FLR</span>
</li>
<li>
<span class="cname">하노버</span>
<span class="abbr">HAJ</span>
</li>
<li>
<span class="cname">함부르크</span>
<span class="abbr">HAM</span>
</li>
<li>
<span class="cname">헬싱키</span>
<span class="abbr">HEL</span>
</li>
<li>
<span class="cname">비고</span>
<span class="abbr">VGO</span>
</li>
<li>
<span class="cname">발렌시아</span>
<span class="abbr">VLC</span>
</li>
<li>
<span class="cname">알리칸테</span>
<span class="abbr">ALC</span>
</li>
<li>
<span class="cname">그라나다</span>
<span class="abbr">GRX</span>
</li>
<li>
<span class="cname">빌바오</span>
<span class="abbr">BIO</span>
</li>
<li>
<span class="cname">란사로테 섬</span>
<span class="abbr">ACE</span>
</li>
<li>
<span class="cname">팔마데마요르카</span>
<span class="abbr">PMI</span>
</li>
<li>
<span class="cname">산티아고 데 콤포스텔라</span>
<span class="abbr">SCQ</span>
</li>
<li>
<span class="cname">룩셈부르크</span>
<span class="abbr">LUX</span>
</li>
<li>
<span class="cname">라코루냐</span>
<span class="abbr">LCG</span>
</li>
<li>
<span class="cname">산세바스티안</span>
<span class="abbr">EAS</span>
</li>
<li>
<span class="cname">그란카나리아</span>
<span class="abbr">LPA</span>
</li>
<li>
<span class="cname">케르큐라</span>
<span class="abbr">CFU</span>
</li>
<li>
<span class="cname">말라가</span>
<span class="abbr">AGP</span>
</li>
<li>
<span class="cname">알메리아</span>
<span class="abbr">LEI</span>
</li>
<li>
<span class="cname">이비자 섬</span>
<span class="abbr">IBZ</span>
</li>
<li>
<span class="cname">세비야</span>
<span class="abbr">SVQ</span>
</li>
</ul>
</div>
<div class="national-listbox" name="national-listbox" id="nation-6-list">
<h6>취항지</h6>
<ul>
<li>
<span class="cname">사이판</span>
<span class="abbr">SPN</span>
</li>
<li>
<span class="cname">시드니</span>
<span class="abbr">SYD</span>
</li>
<li>
<span class="cname">팔라우</span>
<span class="abbr">ROR</span>
</li>
<li>
<span class="cname">멜버른</span>
<span class="abbr">MEL</span>
</li>
</ul>
<h6>그외</h6>
<ul>
<li>
<span class="cname">골드코스트</span>
<span class="abbr">OOL</span>
</li>
<li>
<span class="cname">브리즈번</span>
<span class="abbr">BNE</span>
</li>
<li>
<span class="cname">애들레이드</span>
<span class="abbr">ADL</span>
</li>
<li>
<span class="cname">캐언즈</span>
<span class="abbr">CNS</span>
</li>
<li>
<span class="cname">캔버라</span>
<span class="abbr">CBR</span>
</li>
<li>
<span class="cname">퍼스</span>
<span class="abbr">PER</span>
</li>
<li>
<span class="cname">호바트</span>
<span class="abbr">HBA</span>
</li>
<li>
<span class="cname">올버리</span>
<span class="abbr">ABX</span>
</li>
<li>
<span class="cname">알미데일</span>
<span class="abbr">ARM</span>
</li>
<li>
<span class="cname">코프스하버</span>
<span class="abbr">CFS</span>
</li>
<li>
<span class="cname">더보</span>
<span class="abbr">DBO</span>
</li>
<li>
<span class="cname">다윈</span>
<span class="abbr">DRW</span>
</li>
<li>
<span class="cname">로드하우 아일랜드</span>
<span class="abbr">LDH</span>
</li>
<li>
<span class="cname">모리</span>
<span class="abbr">MRZ</span>
</li>
<li>
<span class="cname">포트 매쿠아리</span>
<span class="abbr">PQQ</span>
</li>
<li>
<span class="cname">탬워스</span>
<span class="abbr">TMW</span>
</li>
<li>
<span class="cname">와가와가</span>
<span class="abbr">WGA</span>
</li>
</ul>
</div>
<div class="national-listbox" name="national-listbox" id="nation-7-list">
<h6>취항지</h6>
<ul>
<li>
<span class="cname">울란바타르</span>
<span class="abbr">ULN</span>
</li>
<li>
<span class="cname">알마티</span>
<span class="abbr">ALA</span>
</li>
<li>
<span class="cname">타슈켄트</span>
<span class="abbr">TAS</span>
</li>
</ul>
<h6>그외</h6>
<ul>
<li>
<span class="cname">아스타나</span>
<span class="abbr">TSE</span>
</li>
</ul>
</div>
</div>
</div>
<div class="recent-search-wrap">
<h4>관심노선 및 최근 검색</h4>
<div class="recent-srch-box" name="recent-srch-box">
<ul>
<li>
<div>서울 / 인천<var>ICN</var></div>
<span>뉴욕 / 존 F 케네디<var>JFK</var></span>
<button type="button" class="btn-delete" name="btn-delete"></button>
</li>
<li id="dd">
<div>서울 / 인천<var>ICN</var></div>
<span>로스엔젤레스<var>LAX</var></span>
<button type="button" class="btn-delete" name="btn-delete"></button>
</li>
<li>
<div>서울 / 인천<var>ICN</var></div>
<span>제주<var>CJU</var></span>
<button type="button" class="btn-delete" name="btn-delete"></button>
</li>
<li>
<div>뉴욕 / 존 F 케네디<var>JFK</var></div>
<span>서울 / 인천<var>ICN</var></span>
<button type="button" class="btn-delete" name="btn-delete"></button>
</li>
</ul>
</div>
<div class="btn-area">
<button type="button" class="gray blueBtn" id="btn-select" disabled>선택</button>
</div>
</div>
</div>
</div>
`
);

windowClose();

const pickerWindow = document.getElementById('airport-picker-window');
let openedBy; // picker를 open한 객체를 저장
let airportFrom, airportTo; // 최신검사 선택시 데이터 저장

//지역 선택시 이벤트
document.querySelector('.list-nation').addEventListener('click', () => {
    if(event.target.tagName === "LI") {
        const activeLI = document.querySelector('#airport-picker-window li.active');
        const activeDIV = document.querySelector('#airport-picker-window div.active');
        if (activeLI) activeLI.classList.remove('active');
        event.target.classList.add('active');
        if (activeDIV) activeDIV.classList.remove('active');
        document.getElementById(event.target.id + "-list").classList.add('active');
    }
});

// 공항 선택시 이벤트
document.querySelector('.list-airport').addEventListener('click', () => {
    if(document.querySelector('.recent-srch-selected')) document.querySelector('.recent-srch-selected').classList.remove('recent-srch-selected');
    if(document.querySelector('.selected')) document.querySelector('.selected').classList.remove('selected');
    if(event.target.tagName === "LI") 
        event.target.classList.add('selected');
    else if(event.target.tagName === "SPAN")
        event.target.parentElement.classList.add('selected');
    document.getElementById('btn-select').removeAttribute('disabled');
});

// 최근검색 선택시 이벤트
document.querySelector('.recent-srch-box').addEventListener('click', e => {
    if(e.target.tagName === "BUTTON") {
        e.target.parentElement.classList.add('move-to-left');
        setTimeout(() => {
            e.target.parentElement.parentElement.removeChild(e.target.parentElement);
            if(!document.querySelector('.recent-srch-selected') && !document.querySelector('.selected')) 
                document.getElementById('btn-select').setAttribute('disabled', 'disabled');
        }, 700);
    } else {
        if(document.querySelector('.recent-srch-selected')) document.querySelector('.recent-srch-selected').classList.remove('recent-srch-selected');
        if(document.querySelector('.selected')) document.querySelector('.selected').classList.remove('selected');
        if(e.target.tagName === "LI") {
            e.target.classList.add('recent-srch-selected');
            airportFrom = e.target.firstElementChild.innerText;
            airportTo = e.target.children[1].innerText;
        } else if (e.target.tagName === 'VAR' ) {
            e.target.parentElement.parentElement.classList.add('recent-srch-selected');
            airportFrom = e.target.parentElement.parentElement.children[0].innerText;
            airportTo = e.target.parentElement.parentElement.children[1].innerText;
        } else {
            e.target.parentElement.classList.add('recent-srch-selected');
            airportFrom = e.target.parentElement.children[0].innerText;
            airportTo = e.target.parentElement.children[1].innerText;
        }
        document.getElementById('btn-select').removeAttribute('disabled');
    }
});

// 출발지, 도착지 같은 공항이 선택 됐을 때
let selectedAirport;
let pairInput;

// 선택 클릭시 이벤트
document.getElementById('btn-select').addEventListener('click', () => {
	const index = openedBy.id.charAt(openedBy.id.length-1);
    if(document.querySelector('.selected')) {
        openedBy.value = `${document.querySelector('.selected>.cname').innerText}   (${document.querySelector('.selected>.abbr').innerText})` 
        if(openedBy.value === selectedAirport )  pairInput.value="";
    } else if(document.querySelector('.recent-srch-selected')) {
        airportFrom = `${airportFrom.substring(0, airportFrom.length-3)}   (${airportFrom.substring(airportFrom.length-3)})`;
        airportTo = `${airportTo.substring(0, airportTo.length-3)}   (${airportTo.substring(airportTo.length-3)})`;
    	document.getElementById('airportFrom-' + index).value = airportFrom;
    	document.getElementById('airportTo-' + index).value = airportTo;
        
    }
    pickerWindow.style.display = 'none';
    overlay.style.display = 'none';
});


// 실행시 이미 공항이 선택되었던 적이 있다면 (value값이 존재하면)
// picker가 그 선택된 값을 보여주도록 설정
const openEvent = () => {
    if(document.querySelector('.recent-srch-selected')) document.querySelector('.recent-srch-selected').classList.remove('recent-srch-selected');
    if(document.querySelector('.selected')) document.querySelector('.selected').classList.remove('selected');
    document.querySelector('li.active').classList.remove('active');
    document.querySelector('div.active').classList.remove('active');
    
    if(openedBy.value === "") {
        document.getElementById('nation-1').classList.add('active');
        document.getElementById('nation-1-list').classList.add('active');
        document.getElementById('btn-select').setAttribute('disabled', 'disabled');
        document.querySelectorAll('.national-listbox').forEach(elem => elem.scrollTop = 0 )
    } else {
        const airports = document.querySelectorAll('.abbr');
        const abbr = openedBy.value.substring(openedBy.value.length-4, openedBy.value.length-1);

        airports.forEach(elem => {
           if(elem.innerText === abbr) {
               elem.parentElement.classList.add('selected');
               let targetAirportList = elem.parentElement.parentElement.parentElement;
               targetAirportList.classList.add('active');
               const nations = targetAirportList.parentElement.parentElement.firstElementChild.firstElementChild.children;
               for(let i =0; i<nations.length; i++) {
                   if(targetAirportList.id.indexOf(nations[i].id) !== -1) nations[i].classList.add('active');
               }
           }
        });
    }
};


// picker를 사용할 수 있도록 open이벤트 등록
const openPicker = (targetClassName, centeredY) => {
    
    const targets = document.querySelectorAll(targetClassName);
    
    targets.forEach(elem => {
        elem.addEventListener('click', e => {
            openedBy = elem;
            elem.id.indexOf(elem.id.length-1);
            if(elem.id.indexOf('From') !== -1){
            	pairInput = document.getElementById(elem.id.replace('From', 'To'));
            	selectedAirport = pairInput.value;
            }else{
            	pairInput = document.getElementById(elem.id.replace('To', 'From'));
            	selectedAirport = pairInput.value;
            }
            openEvent();
            pickerWindow.style.display = 'block';
            if(centeredY) { 
            	pickerWindow.classList.add('centeredXY');
            	overlay.style.display = 'block';
            } else {
                const _scrollTop = window.scrollY || document.documentElement.scrollTop;
                pickerWindow.style.top = _scrollTop + elem.getBoundingClientRect().bottom + 15 + 'px';
                pickerWindow.classList.add('centeredX');
                overlay.style.display = 'block';
            }
        });
    });
    
    // picker외 다른 부분 클릭시 picker종료
    overlay.addEventListener('click', () => {
        pickerWindow.style.display = 'none';
        overlay.style.display = 'none';
    });
};