%% 横轴等积方位
landareas=shaperead('landareas.shp', UseGeoCoords', true);
axesm('eqaazim','Frame','on','Grid','on','origin',[0 105 0]);
geoshow(landareas, 'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 横轴等距方位
landareas=shaperead('landareas.shp','UseGeoCoords',true);
axesm('eqdazim','Frame','on','Grid','on','origin',[0 105 0]);
geoshow(landareas, 'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 横轴等角方位
landareas=shaperead('landareas.shp','UseGeoCoords',true);
axesm('stereo','Frame','on','Grid','on','origin',[0 105 0]);
geoshow(landareas, 'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 斜轴等积方位
landareas=shaperead('landareas.shp', UseGeoCoords', true);
axesm('eqaazim','Frame','on','Grid','on','origin',[45 105 0]);
geoshow(landareas, 'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 斜轴等距方位
landareas=shaperead('landareas.shp', UseGeoCoords', true);
axesm('eqdazim','Frame','on','Grid','on','origin',[45 105 0]);
geoshow(landareas, 'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 斜轴等角方位
landareas=shaperead('landareas.shp', UseGeoCoords', true);
axesm('stereo','Frame','on','Grid','on','origin',[45 105 0]);
geoshow(landareas, 'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 正轴等积方位
landareas=shaperead('landareas.shp', UseGeoCoords', true);
axesm('eqaazim','Frame','on','Grid','on','origin',[90 105 0]);
geoshow(landareas, 'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 正轴等距方位
landareas=shaperead('landareas.shp', UseGeoCoords', true);
axesm('eqdazim','Frame','on','Grid','on','origin',[90 105 0]);
geoshow(landareas, 'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 正轴等角方位
landareas=shaperead('landareas.shp', UseGeoCoords', true);
axesm('stereo','Frame','on','Grid','on','origin',[90 105 0]);
geoshow(landareas, 'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;

%% 正射投影下的中国国界线
path='D: boul_41.shp';
Chinaareas=shaperead(path, 'UseGeoCoords',true);
axesm('ortho','Frame','on','Grid','on','origin',[34.5,109]);
geoshow(Chinaareas);
mdistort('angles',0:5:30);

%% 湖北省的等角割圆锥投影并绘制面积变形等变形线
%导入数据
path='D:\省.shp';
HuBei= shaperead(path,'sebeoCoords',true,'selector',{@(NAME) Strmp(NAME,'湖北省'),'NAME'});
%计算标准纬线
fai1=28.5+0.16*(33.5-28.5);
fai2=33.5-0.12*(33.5-28.5);
%设置地图区域并绘制
Map=wor1dmap([28.5 33.5],[108 116.5]);
setm(Map,'mapprojection','lambertstd','mapparallels',[fail fai2],'glinestyle','-','golor',[0 0 0],'mlabellocation',2,'plabelloation',2,'mlinelocation',2,'plinelocation',2);
title('湖北省');
geoshow(HuBei);
%绘制等变形线
mdistort('area',-0.15:0.03:0.15);
%地图修饰
tightmap tight;
textm(30.5,114,'武汉','color','b');

%% 横轴等积圆锥
landareas=shaperead('landareas.shp','UseGeoCoords',true);
axesm('eqaconicstd','Frame','on','Grid','on','origin', [0 105 0]);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 横轴等距圆锥
landareas=shaperead('landareas.shp','UseGeoCoords',true);
axesm('eqdconicstd','Frame','on','Grid','on','origin', [0 105 0]);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 横轴等角圆锥
landareas=shaperead('landareas.shp','UseGeoCoords',true);
axesm('lambertstd','Frame','on','Grid','on','origin', [0 105 0]);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 斜轴等积圆锥
landareas=shaperead('landareas.shp','UseGeoCoords',true);
axesm('eqaconicstd','Frame','on','Grid','on','origin', [45 105 0]);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 斜轴等距圆锥
landareas=shaperead('landareas.shp','UseGeoCoords',true);
axesm('eqdconicstd','Frame','on','Grid','on','origin', [45 105 0]);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 斜轴等角圆锥
landareas=shaperead('landareas.shp','UseGeoCoords',true);
axesm('lambertstd','Frame','on','Grid','on','origin', [45 105 0]);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 正轴等积圆锥
landareas=shaperead('landareas.shp','UseGeoCoords',true);
axesm('eqaconicstd','Frame','on','Grid','on','origin', [90 105 0]);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 正轴等距圆锥
landareas=shaperead('landareas.shp','UseGeoCoords',true);
axesm('eqdconicstd','Frame','on','Grid','on','origin', [90 105 0]);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%% 正轴等角圆锥
landareas=shaperead('landareas.shp','UseGeoCoords',true);
axesm('lambertstd','Frame','on','Grid','on','origin', [90 105 0]);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;

%% 墨卡托投影，从武汉到温哥华、奥克兰
landareas=shaperead('landareas.shp','UseGeoCoords',true);
axesm('mercator','Frame','on','Grid','on','origin',[0 120 0]);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
textm(30,115,'武汉’,'color','b');
textm(49,-123,'温哥华','color','b');
textm(-37,175,'奥克兰','color','b');
%% 球心投影，从武汉到温哥华、奥克兰
landareas=shaperead('landareas.shp','UseGeoCoords',true);
axesm('gnomonic','Frame','on','Grid','on','origin',[0 120 0]);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
textm(30,115,'武汉’,'color','b');
textm(49,-123,'温哥华','color','b');
textm(-37,175,'奥克兰','color','b');
%% 绘制大圆航线
pointTrackwl=track2('gc',30,115,49,-123);
pointTrackal=track2('gc',30,115,-37,175);
plotm(pointTrackwl,'g');
plotm(pointTrackal,'g');
%% 绘制等角航线
pointTrackw2=track2('rh',30,115,49,-123);
pointTracka2=track2('rh',30,115,-37,175);
plotm(pointTrackw2,'r');
plotm(pointTracka2,'r');
%% 计算大圆航线的长度及方位角
[gcarclenl, gcazl]=distance('gc',30,115,49,-123,referenceE11ipsoid('wgs84',km'));
disp(['武汉到温哥华的大圆航线距离为:' num2str(gcarclen1) 'km']);
disp(['武汉到温哥华的大圆航线方位角为:' num2str(gcaz1) '°']);
[gcarclen2,gcaz2]=distance('gc',30,115,-37,175,referenceE1lipsoid('wgs84','km'));
disp(['武汉到奥克兰的大圆航线距离为:' num2str(gcarclen2) 'km']);
disp(['武汉到奥克兰的大圆航线方位角为:' num2str(gcaz2) '°']);
%% 计算等角航线的长度及方位角
[rharclenl,rhazl]=distance('rh',30,115,49,-123,referenceE1lipsoid('wgs84','km'));
disp(['武汉到温哥华的等角航线距离为:' num2str(rharclen1) 'km' ]);
disp(['武汉到温哥华的等角航线方位角为:' num2str(rhaz1) '°']);
[rharclen2,rhaz2]=distance('rh',30,115,-37,175,referenceE1lipsoid('wgs84','km'));
disp(['武汉到奥克兰的等角航线距离为:' num2str(rharclen2),'km']);
disp(['武汉到奥克兰的等角航线方位角为:' num2str(rhaz2) '°']);
%% 拓展: 绘制结合大圆航线和等角航线的航线，即选取大圆航线所经过的主要特征点依次连成直线
[pointlatw, pointlongw]=gcwaypts(30,115,49,-123,3);
geoshow(pointlatw,pointlongw);
[pointlata, pointlonga]=gcwaypts(30,115,-37,175,3);
geoshow(pointlata,pointlonga);

%% 横轴等积圆柱
landareas=shaperead('landareas.shp','UseGeoCoords', true);
axesm('eqacylin','Frame','on','Grid','on',' origin',[0 105 0]);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
mdistort('area');
mdistort('angles');
%% 横轴等距圆柱
landareas=shaperead('landareas.shp','UseGeoCoords',true);
axesm('eqdcylin','Frame','on','Grid','on',' origin',[0 105 0]);
geoshow(landareas,'FaceColor',[1 1 .5],EdgeColor',[.6 .6 .6]);
mdistort('area');
mdistort('angles');
%% 横轴等角圆柱
landareas=shaperead('landareas.shp', 'UseGeoCoords',true);
axesm('mercator','Frame','on','Grid','on',' origin',[0 105 0]);
geoshow(landareas,'FaceColor',[1 1 .5],EdgeColor',[.6 .6 .6]);
mdistort('area');
mdistort('angles');
%% 斜轴等积圆柱
landareas=shaperead('landareas.shp','UseGeoCoords', true);
axesm('eqacylin','Frame','on','Grid','on',' origin',[45 105 0]);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
mdistort('area');
mdistort('angles');
%% 斜轴等距圆柱
landareas=shaperead('landareas.shp','UseGeoCoords',true);
axesm('eqdcylin','Frame','on','Grid','on',' origin',[45 105 0]);
geoshow(landareas,'FaceColor',[1 1 .5],EdgeColor',[.6 .6 .6]);
mdistort('area');
mdistort('angles');
%% 斜轴等角圆柱
landareas=shaperead('landareas.shp', 'UseGeoCoords',true);
axesm('mercator','Frame','on','Grid','on',' origin',[45 105 0]);
geoshow(landareas,'FaceColor',[1 1 .5],EdgeColor',[.6 .6 .6]);
mdistort('area');
mdistort('angles');
%% 正轴等积圆柱
landareas=shaperead('landareas.shp','UseGeoCoords', true);
axesm('eqacylin','Frame','on','Grid','on',' origin',[90 105 0]);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
mdistort('area');
mdistort('angles');
%% 正轴等距圆柱
landareas=shaperead('landareas.shp','UseGeoCoords',true);
axesm('eqdcylin','Frame','on','Grid','on',' origin',[90 105 0]);
geoshow(landareas,'FaceColor',[1 1 .5],EdgeColor',[.6 .6 .6]);
mdistort('area');
mdistort('angles');
%% 正轴等角圆柱
landareas=shaperead('landareas.shp', 'UseGeoCoords',true);
axesm('mercator','Frame','on','Grid','on',' origin',[90 105 0]);
geoshow(landareas,'FaceColor',[1 1 .5],EdgeColor',[.6 .6 .6]);
mdistort('area');
mdistort('angles');

%% 高斯投影在纬度为 1˚，经差为 1.5˚,3˚,4.5˚,6˚,10˚,20˚时的长度比、面积比
axesm tranmerc;
[areascale,angdef,maxscale,minscale, merscale,parscale] = distortcalc(1,1.5);
fprintf('areascale=%.6f n',areascale);
fprintf('maxscale=%.6f\n',maxscale);
fprintf('minscale=%.6f n',minscale);
fprintf('merscale=%.6f n',merscale);
fprintf('parscale=%.6f\n',parscale);

%% 绘制高斯投影3度带下武汉市市域的地图，并绘制长度变形和面积变形的等变形线
path='D:市.shp';
wuhanarea=shaperead(path,'UseGeoCoords',true);
axes('tramarc','Frame','on','Grid','on','Meridian','on','Parallel','on','MapLatLimit',[29,32],'MapLonLimit',[112.5,115.5],'mlinelocation',1,'plinelocation',1);
geoshow(wuhanarea,'FaceColor',[1 1 .5],'EdgeColor', [.6 .6 .6]);
textm(30.5,114,'武汉','color','b');
mdistort('area', 0:0.005:0.04);
mdistort('merscale',0:0.005:0.02);

%% 等面积斜轴投影
landareas=shaperead('D:\continent.shp','UseGeoCoords',true);
axesm('eqaazim','Flatlimit',[-Inf 60],'Frame','on','Grid','on','origin',[40 90]);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[0 0.7 0.7]);
tissot;
%mdistort('angles');
%mdistort('minscale');

%% 彭纳投影
andareas=shaperead('D:\continent.shp','UseGeoCoords',true);
Map=wor1dmap([-10 80],[26 -170]);
setm(Map,'mapprojection', 'boone','mapparallels',40,'glinestyle','-',golor,[0 0 0],'origin',[0 80],'mlabelloation',20,'plabellocation',20,'mlinelocation',20,'plinelocation',20);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot;
%mdistort('angles').
%mdistort('minscale');

%% 智利 横切等角圆柱投影
landarea=shaperead('landareas. shp','UseGeoCoords',true);
axesm('trammerc','Frame','on','Grid','on','MapLatLimit',[-18,-57],'MapLonLimit',[-81.5,-68.5],'mlinelocation',5,'plinelocation',5);
geoshow(landarea,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot([5 5 0.01]);
% mdistort('area',[-0.8:0.2:0.8]);
% mdistort('merscale',[-0.4:0.1:0.4]);
title('智利');

%% 越南 横切等角圆柱投影
landarea=shaperead('landareas.shp','UseGeoCoords',true);
axesm('tranmerc','Frame','on','Grid','on','MapLatLimit',[8,24],'MapLonLimit',[102, 110],'mlinelocation',2,'plinelocation',5);
geoshow(landarea,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6])
tissot([5 2 0.01]);
%mdistort('area',[-0.4:0.1:0.4]);
%mdistort('merscale',[-0.2:0.05:0.2]);
title('越南');

%% 俄罗斯 等角正割圆锥校影
landarea=shaperead('landareas.shp','UseGeoCoords', true);
axesm('lambertstd','Frame','on','Grid','on','MapLatLimit',[41,82],'MapLonLimit',[2,-170],'mapparallels',[40,70],'mlinelooation',30,'plinelocation',10);
geoshow(landarea,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
tissot([10 10 0.015]);
%mdistort('area',[-40:5:40]);
%mdistort ('merscale',[-5:1:5]);
title('俄罗斯');

