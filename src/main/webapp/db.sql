create table joori_account(

	l_id varchar2 (20 char) primary key,
	l_pw varchar2 (20 char) not null,
	l_name varchar2 (20 char) not null
);

insert into joori_account values('jh','1004','진현');

select * from joori_account

create table wavve_review(
	wr_no number(3) primary key,
	wr_title varchar2 (50 char) not null,
	wr_txt varchar2 (200 char) not null,
	wr_writer varchar2 (20 char) not null,
	wr_genre varchar2 (20 char) not null,
	wr_movie_title varchar2 (20 char) not null,
	wr_grade varchar2 (20 char) not null,
	wr_date date not null
);

create sequence wavve_review_seq;

insert into wavve_review values(wavve_review_seq.nextval,'제목','내용','김진현','영화','백두산','★★★★★',sysdate);

select * from wavve_review;


create table wavve_best(
	wb_no number(3) primary key,
	wb_title varchar2 (50 char) not null,
	wb_txt varchar2 (200 char) not null,
	wb_img varchar2 (200 char) not null,
	wb_date date not null,
	wb_writer varchar2 (200 char) not null
);


create sequence wavve_best_seq;


insert into wavve_best values(wavve_best_seq.nextval,'제목','내용','사진',sysdate,'test');

select * from wavve_best;
-------------------------------------------------------------------------

create table disney_review(
    d_no number(3) primary key,
    d_title varchar2 (50 char) not null,
    d_movietitle varchar2 (50 char) not null,
    d_text varchar2 (500 char) not null,
    d_writer varchar2 (20 char) not null,
    d_genre varchar2 (20 char) not null,
    d_score number (20) not null,
    d_date date not null
);

create sequence disney_review_seq;

insert into disney_review values (disney_review_seq.nextval, '후기 제목', '영화 제목', '내용', '작성자', '장르', '5', sysdate);








------------------------------------------------------------------


create table disney_best(
	d_no number (3) primary key,
	d_title varchar2(50char) not null,
	d_scene varchar2(200char) not null,
	d_text varchar2(50char) not null,
	d_writer varchar2(20char) not null,
	d_date date not null
);

create sequence disney_best_seq;

insert into disney_best values (disney_best_seq.nextval, '테스트', '사진 없엉', '내용내용내용내용내용내용내용용용용용', '임시', sysdate);




--------------------------------------------------------

create table watcha_review(
    w_no number(3) primary key,
    w_reviewtitle varchar2 (50 char) not null,
    w_movietitle varchar2 (50 char) not null,
    w_writer varchar2 (20 char) not null,
    w_txt varchar2 (100 char) not null,
    w_genre varchar2 (20 char) not null,
    w_score varchar2 (20 char) not null,
    w_date date not null
);
drop table watcha_review;
create sequence watcha_review_seq;

insert into WATCHA_REVIEW values (watcha_review_seq.nextval, '해리포터', '해리포터', 'admin','해리포터','해리포터','해리포터',sysdate);

select * from WATCHA_REVIEW;
-------------------------------------------------


create table watcha_bestScene(
    bs_no number(3) primary key,
    bs_bestSceneTitle varchar2 (50 char) not null,
    bs_genre varchar2 (20 char) not null,
    bs_writer varchar2(20 char) not null,
    bs_movieTitle varchar2 (50 char) not null,
    bs_txt varchar2 (100 char) not null,
    bs_img varchar2 (200 char) not null,
    bs_date date not null
);

drop table watcha_bestScene;
create sequence watcha_bestScene_seq;

insert into WATCHA_BESTSCENE values (WATCHA_BESTSCENE_seq.nextval,'너의 이름은','애니','admin','너의 이름은','감동적','kiminonawa.jpg',sysdate );

------------------------------------------

create table watcha_recom(
	rc_no number(3) primary key,
    rc_movieTitle varchar2 (50 char) not null,
    rc_genre varchar2 (20 char) not null,
    rc_img varchar2 (200 char) not null
)
create sequence watcha_recom_seq;

insert into WATCHA_RECOM values (WATCHA_RECOM_seq.nextval,'더블 트러블','기타','doubletrouble.jpg');
insert into WATCHA_RECOM values (WATCHA_RECOM_seq.nextval,'언 프레임드','드라마','unframed.jpg');
insert into WATCHA_RECOM values (WATCHA_RECOM_seq.nextval,'페어웰','영화','farewell.jpg');
insert into WATCHA_RECOM values (WATCHA_RECOM_seq.nextval,'샌 안드레아스','영화','sanandreas.jpg');
insert into WATCHA_RECOM values (WATCHA_RECOM_seq.nextval,'인턴','영화','intern.jpg');
insert into WATCHA_RECOM values (WATCHA_RECOM_seq.nextval,'더듬이TV:우당탕탕 안테나','기타','anthena.jpg');
insert into WATCHA_RECOM values (WATCHA_RECOM_seq.nextval,'그림자 미녀','드라마','shadowgirl.jpg');
insert into WATCHA_RECOM values (WATCHA_RECOM_seq.nextval,'디 액트','영화','the act.jpg');
insert into WATCHA_RECOM values (WATCHA_RECOM_seq.nextval,'와이 우먼 킬','드라마','whywomankill.jpg');
insert into WATCHA_RECOM values (WATCHA_RECOM_seq.nextval,'웨인','드라마','wane.jpg');
insert into WATCHA_RECOM values (WATCHA_RECOM_seq.nextval,'나이브스 아웃','영화','KnivesOut.jpg');
insert into WATCHA_RECOM values (WATCHA_RECOM_seq.nextval,'스파이더맨:홈커밍','영화','spidermanhomecoming.jpg');
insert into WATCHA_RECOM values (WATCHA_RECOM_seq.nextval,'러브레터','영화','love letter.jpg');
insert into WATCHA_RECOM values (WATCHA_RECOM_seq.nextval,'스파이더맨:뉴 유니버스','영화','spidermannewuniverse.jpg');
insert into WATCHA_RECOM values (WATCHA_RECOM_seq.nextval,'그린 나이트','영화','greenknight.jpg');
insert into WATCHA_RECOM values (WATCHA_RECOM_seq.nextval,'주술회전','애니','jujutsukaisen.jpg');
insert into WATCHA_RECOM values (WATCHA_RECOM_seq.nextval,'너의 이름은.','애니','kiminonawa.jpg');
insert into WATCHA_RECOM values (WATCHA_RECOM_seq.nextval,'극장판 귀멸의 칼날: 무한열차편','애니','mugenrextusha.jpg');
insert into WATCHA_RECOM values (WATCHA_RECOM_seq.nextval,'귀멸의 칼날','애니','kimetsunoyaiba.jpg');
insert into WATCHA_RECOM values (WATCHA_RECOM_seq.nextval,'너의 췌장을 먹고 싶어','애니','kiminosuizowotabetai.jpg');



----------------------------------

create table watcha_nextWatcha(
	wnw_no number(3) primary key,
    wnw_img varchar2 (200 char) not null,
    wnw_coment varchar2 (200 char) not null
)
create sequence watcha_nextWatcha_seq;
insert into watcha_nextWatcha values (watcha_nextWatcha_seq.nextval,'bossComedian.jfif','<h2>나의 직장상사는<br> 코미디언</h2><h3>제73회 에미상 3관왕 달성!</h3>');
insert into watcha_nextWatcha values (watcha_nextWatcha_seq.nextval,'ten months.jfif','1월1주 NEW 십개월의 미래, 러덜리스, 브로드서치 시즌2 등');
insert into watcha_nextWatcha values (watcha_nextWatcha_seq.nextval,'money.jfif','2022 왓챠 포춘 쿠키 제목으로 보는 올해 운세! 어떤 작품이 가장 먼저 보이나요?');
insert into watcha_nextWatcha values (watcha_nextWatcha_seq.nextval,'minari.jfif','#!헐 왓챠에! 미나리 원더풀 미나리, 원더풀 윤여정! 새해를 여는 따뜻한 작품');
insert into watcha_nextWatcha values (watcha_nextWatcha_seq.nextval,'nisiajokyongyo.jfif','W-Exclusive 니시아적영요 너는 나의 영광 디디럴바 & 양양 비주얼로 서사 하나 뚝딱!');

----------------------------------------------------

create table netflix_movie(
n_b_no number(3) primary key,
n_b_title varchar2 (50 char) not null,
n_b_actor varchar2 (100 char) not null,
n_b_story varchar2 (300 char) not null,
n_b_genre varchar2 (20 char) not null,
n_b_rank varchar2 (20 char) not null,
n_b_preview varchar2 (100 char) not null
)

create sequence netflix_movie_seq;

insert into netflix_movie values (netflix_movie_seq.nextval, '고요의 바다', '배두나, 공유, 이준, 김선영, 이무생, 이성욱', '각계 전문가들이 한 팀이 되어 달 탐사선에 오른다. 임무는 폐쇄된 연구기지에서 24시간 안에 중요 샘플을 회수하는 것. 대원들은 비밀에 잠긴 이 위험천만한 기밀 미션을 완수할 수 있을까.', '미스터리, SF, 스릴러', '15세이상 관람가', ' ');
insert into netflix_movie values (netflix_movie_seq.nextval, '돈 룩 업', '레오나르도 디카프리오, 제니퍼 로렌스, 메릴 스트립, 케이트 블란쳇', '지구를 향해 돌진하는 혜성의 존재를 발견한 두 천문학자. 임박한 재앙을 전 인류에 경고하려 언론사를 찾아다니기 시작한다. 하지만 다른 데 정신이 팔린 세상은 시큰둥한 반응뿐. 그래서요?', '사회 이슈, SF, 코미디', '15세이상 관람가', ' ');
insert into netflix_movie values (netflix_movie_seq.nextval, '모가디슈', '김윤석, 조인성, 허준호, 구교환, 김소진', '소말리아 내전에서 표적이 된 남북한의 방문 외교관들. 탈출 계획을 세우기 위해 서로에게 의지한다.', '밀리터리, 실화 바탕, 액션', '15세이상 관람가', ' ');
insert into netflix_movie values (netflix_movie_seq.nextval, '위쳐', '헨리 카빌, 애니아 철로트라, 프레이아 앨런, 조이 베이티, 이먼 패런, 미안나 버링', '세계적인 판타지 대작이 넷플릭스 시리즈로 다시 태어난다. 어둠과 위험의 세계, 진실은 어디에 있을까. 운명으로 묶인 그들. 위쳐와 마법사, 홀로 남은 공주의 싸움이 시작된다.', '판타지, 액션, 도서 원작', '청소년관람불가', ' ');
insert into netflix_movie values (netflix_movie_seq.nextval, '브리저튼', '아조아 안도, 줄리 앤드루스, 로레인 애슈본, 조너선 베일리, 루비 바커', '진실한 애정과 끈끈한 유대로 맺어진 브리저튼 가문의 8남매. 그들이 런던의 상류사회에서 사랑과 행복을 향한 여정을 떠난다. 줄리아 퀸의 베스트셀러 소설 시리즈 원작.', '로맨스, 도서 원작, 시대물', '청소년관람불가', ' ');
insert into netflix_movie values (netflix_movie_seq.nextval, '그 해 우리는', '최우식, 김다미, 김성철, 노정의, 박진주, 조복래', '고등학교 시절 촬영한 다큐멘터리가 역주행하며 화제가 됐다. 서로 안 좋게 헤어졌건만, 어쩔 수 없이 다시 카메라 앞에 선 두 사람. 그렇게 서로의 삶에 다시 모습을 드러내기 시작한다.', '로맨스, 코미디', '15세이상관람가', ' ');
insert into netflix_movie values (netflix_movie_seq.nextval, '에밀리, 파리에 가다', '릴리 콜린스, 필리핀 르루아볼리외, 애슐리 박, 뤼카 브라보, 케이트 월시', '봉주르, 파리! 낭만의 도시에서 꿈의 직장을 갖게 된 에밀리. 프랑스어는 못하지만, 마케팅이라면 자신 있다. 그러나 쉽지 않은 인생. 사랑과 우정은 여기서도 복잡하다.', '로맨스, 코미디', '15세이상관람가', ' ');
insert into netflix_movie values (netflix_movie_seq.nextval, '원헌드레드', '일라이자 테일러, 페이지 터코, 밥 몰리, 마리 아브게로폴로스, 크리스토퍼 라킨', '지구가 핵전쟁으로 황폐해지고 한 세기의 시간이 흐른 뒤, 우주 정거장에 살던 사람들 100명이 인류의 생존 가능성을 알아내기 위해 지구로 보내진다.', 'SF, 도서원작, 정치', '15세이상관람가', ' ');
insert into netflix_movie values (netflix_movie_seq.nextval, '스파이더맨: 홈커밍', '톰 홀랜드, 마이클 키튼, 로버트 다우니 주니어, 머리사 토메이, 존 패브로', '평범한 학생으로 돌아간 피터 파커, 세상을 위협하는 벌처의 등장에 몸이 근질근질! 애 취급은 그만. 거미줄 좍좍 뽑아내는 스파이더맨의 실력을 보여주겠어. 덤벼라, 악당아!', 'SF, 액션', '12세이상관람가', ' ');
insert into netflix_movie values (netflix_movie_seq.nextval, '킹덤: 아신전', '전지현, 박병은, 김시아, 김뢰하, 구교환', '비극과 배신이 삶을 덮친다. 기이하고 불길한 뭔가를 발견한다. 한순간에 가족과 동족을 읽은 여인. 오직 복수를 꿈꾸며 살아온 그녀가 짙은 어둠을 마주한다. 《킹덤》의 스페셜 에피소드. ', '웹툰 원작, 시대물, 스릴러, 좀비물', '청소년관람불가', ' ');
insert into netflix_movie values (netflix_movie_seq.nextval, '싱크홀', '차승원, 김성균, 이광수, 김혜준, 남다름', '서울 한복판에 발생한 거대 싱크홀. 빌라 한 동이 통째로 땅속으로 꺼져 버렸다. 폭우로 인한 추가 붕괴가 우려되는 상황, 더 큰 일 나기 전에 나가야 한다. 저기요, 우리 좀 꺼내주세요!', '코미디, 블록버스터 코미디', '12세이상관람가', ' ');
insert into netflix_movie values (netflix_movie_seq.nextval, '너의 이름은', '가미키 류노스케, 가미시라이시 모네, 나가사와 마사미, 이치하라 에스코', '도쿄의 잘생긴 남자로 살아볼 순 없을까? 따분한 시골 생활에 질려 도시를 동경하는 여고생. 어느 날, 그 소원이 실제로 이루어진다. 도쿄의 남고생과 이따금 몸이 뒤바뀌는 것. 꿈결같은 둘의 인연은 또 다른 운명을 부르기 시작한다.', '판타지, SF, 로맨스', '12세이상관람가', ' ');
insert into netflix_movie values (netflix_movie_seq.nextval, '크리스마스 연대기', '커트 러셀, 다비 캠프, 주다 루이스, 킴벌리 윌리엄스페이즐리, 올리버 허드슨', '사고뭉치 남매들, 산타의 썰매에 올라타다? 거침없는 영혼의 21세기 산타도 놀라게 한 크리스마스 대소동! 위기의 크리스마스를 구하기 위한 마법 같은 모험이 시작된다.', '가족, 코미디, 어린이', '전체관람가', ' ');
insert into netflix_movie values (netflix_movie_seq.nextval, '하울의 움직이는 성', '바이쇼 지에코, 기무라 타쿠야, 미와 아키히로, 가슈인 다쓰야, 가미키 류노스테', '아버지가 물려준 모자 가게를 지키는 수수한 소녀 소피. 전쟁도, 미녀의 심장을 노리는 마법사의 소문도 먼 세상 이야기일 뿐. 하지만 마녀의 저주로 할머니가 되면서, 소피의 인생이 회전목마처럼 힘차게 움직이기 시작한다.', '가족, 도서 원작, 애니메이션', '전체관람가', ' ');
insert into netflix_movie values (netflix_movie_seq.nextval, '가디언즈', '크리스 파인, 알렉 볼드윈, 주드 로, 아일라 피셔, 휴 잭맨', '잭 프로스트가 산타, 이빨 요정 등 가디언들과 힘을 합친다. 어린이들의 순수한 동심을 파괴하려는 사악한 존재에 맞서 싸우기 위해!', '가족, 도서 원작, 애니메이션', '전체관람가', ' ');
insert into netflix_movie values (netflix_movie_seq.nextval, '드래곤 길들이기 2', '제이 배루셸, 케이트 블란쳇, 제라드 버틀러, 크레이그 퍼거슨, 어메리카 퍼레어라', '히컵과 투슬리스는 섬을 탐험하러 갔다가 충격적인 소식을 듣게 된다. 그리고 얼마 후, 드래곤을 타고 다니는 정체불명의 인물을 만나는데. 대체 누구지? 최대의 적을 맞아 모두가 힘을 합쳐야 할 때. 그녀는 과연 친구일까 적일까?', '가족, 도서 원작, 애니메이션', '전체관람가', ' ');

select * from netflix_movie;



----------------------------------------------------------
create table netflix_review(
    n_no number(3) primary key,
    n_writer varchar2 (30 char) not null,
    n_freetitle varchar2 (50 char) not null,
    n_movietitle varchar2 (50 char) not null,
    n_txt varchar2 (200 char) not null,
    n_genre varchar2 (20 char) not null,
    n_grade varchar2 (20 char) not null,
    n_date date not null
);


create sequence netflix_review_seq;

insert into netflix_review values(netflix_review_seq.nextval, 'jh', '투슬리스', '드래곤 길들이기2', '드래곤', '애니메이션', '⭐⭐⭐',  sysdate);
insert into netflix_review values(netflix_review_seq.nextval, 'js', '고요하다', '고요의 바다', '공유 배두나 그리고 넷플릭스', '영화', '⭐⭐⭐⭐⭐',  sysdate);
insert into netflix_review values(netflix_review_seq.nextval, 'jy', '공유 아빠 역할 항상 애잔해', '고요의 바다', '공유<br>좋다', '영화', '⭐⭐⭐⭐',  sysdate);
insert into netflix_review values(netflix_review_seq.nextval, 'dh', '현실로 일어나면 너무 무서울 듯', '고요의 바다', '물을 등급에 따라서 준다니ㅠㅠ', '영화', '⭐⭐⭐',  sysdate);

insert into netflix_review values(netflix_review_seq.nextval, 'jh', 'SNS의 폐해', '돈 룩 업', '내용', '영화', '⭐⭐',  sysdate);
insert into netflix_review values(netflix_review_seq.nextval, 'dh', '색감 대박!!!', '너의 이름은', '너무 재밌어요', '애니메이션', '⭐⭐⭐⭐⭐',  sysdate);
insert into netflix_review values(netflix_review_seq.nextval, 'jy', '투슬리스만 귀여워!', '드래곤 길들이기2', '나도 드래곤 키울래', '애니메이션', '⭐⭐⭐',  sysdate);
insert into netflix_review values(netflix_review_seq.nextval, 'jh', '이광수 도망칠 수 있었을텐데..', '싱크홀', '왜 안도망친거징..', '영화', '⭐⭐⭐⭐',  sysdate);
insert into netflix_review values(netflix_review_seq.nextval, 'dh', '물이 없으면 사람은 죽어요', '고요의 바다', '그나저나 공유는 안늙네', '드라마', '⭐⭐⭐⭐⭐',  sysdate);

insert into netflix_review values(netflix_review_seq.nextval, 'jh', '귀족들의 삶🙄', '브리저튼', '나도 돈 많은 백수가 되고 싶어요', '드라마', '⭐⭐',  sysdate);
insert into netflix_review values(netflix_review_seq.nextval, 'jy', '현실연애 보는 것 같아요', '그 해 우리는', '전교꼴등이 <br> 돈을 더 잘벌엇..', '드라마', '⭐',  sysdate);
insert into netflix_review values(netflix_review_seq.nextval, 'js', '전지현이 다합니다', '킹덤: 아신전', '오리지널 킹덤이 제일 재밌어요<br>전지현이 너무 이뻤던 아신전', '영화', '⭐⭐⭐⭐⭐',  sysdate);
insert into netflix_review values(netflix_review_seq.nextval, 'js', '일점주기도 아깝다', '돈 룩 업', '재미없어요<br>디카프리오 나온다구해서 기대많이 했는데..<br>완전 별로ㅠㅠ', '영화', '⭐',  sysdate);


----------------------------------------------------------
create table netflix_best(
	n_no number(3) primary key,
	n_writer varchar2 (30 char) not null,
	n_movietitle varchar2 (50 char) not null,
	n_txt varchar2 (100 char) not null,
	n_img varchar2 (100 char) not null,
	n_date date not null
);


create sequence netflix_best_seq;

select * from netflix_best;




insert into netflix_best values(netflix_best_seq.nextval, 'jy', '킹덤: 아신전', '언니 멋있어', 'img/netflix/n_DB/킹덤 아신전.PNG', sysdate);
insert into netflix_best values(netflix_best_seq.nextval, 'jh', '고요의 바다', '루나.', 'img/netflix/n_DB/루나.PNG', sysdate);

insert into netflix_best values(netflix_best_seq.nextval, 'js', '하울의 움직이는 성', '아 미안. 찾고 있었어.', 'img/netflix/n_DB/미안, 찾고있었어.PNG', sysdate);
insert into netflix_best values(netflix_best_seq.nextval, 'jh', '크리스마스 연대기', '이번엔 산타안와써..', 'img/netflix/n_DB/크리스마스연대기.PNG', sysdate);
insert into netflix_best values(netflix_best_seq.nextval, 'jh', '드래곤 길들이기2', '투슬리스 귀여워', 'img/netflix/n_DB/드래곤 길들이기 2.PNG', sysdate);

insert into netflix_best values(netflix_best_seq.nextval, 'jh', '너의 이름은', '너의 이름은.', 'img/netflix/n_DB/너의 이름은.PNG', sysdate);
insert into netflix_best values(netflix_best_seq.nextval, 'js', '브리저튼', '흠 잡을 데 없구나.', 'img/netflix/n_DB/브리저튼.PNG', sysdate);
insert into netflix_best values(netflix_best_seq.nextval, 'dh', '하울의 움직이는 성', '이젠 끝이야.<br>아름답지 않으면 사는 의미가 없어..', 'img/netflix/n_DB/하울의 움직이는 성.PNG', sysdate);

insert into netflix_best values(netflix_best_seq.nextval, 'jy', '스파이더맨: 홈커밍', '수트없이 아무것도 못한다면,<br>넌 더더욱 그 수트를 가질 자격이 없어.', 'img/netflix/n_DB/스파이더맨.PNG', sysdate);
insert into netflix_best values(netflix_best_seq.nextval, 'jy', '고요의 바다', '연평균 강수량이<br>또다시 최저치를 기록했습니다.', 'img/netflix/n_DB/고요의 바다.PNG', sysdate);
insert into netflix_best values(netflix_best_seq.nextval, 'jh', '에밀리, 파리에 가다', 'Its Paris,<br>everyones serious about dinner.', 'img/netflix/n_DB/에밀리 파리에 가다.PNG', sysdate);

















