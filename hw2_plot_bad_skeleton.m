plotonly=4;
%% II is an index vector with indices of incorrectly classified images
for j=1:plotonly
    subplot(2,plotonly,j);
    zalando_plot(items(:,II(j)))
    correctlabel=correct(II(j));
    classifiedlabel=classification(II(j));
    title([num2str(II(j)),': correct=',...
    num2str(correctlabel),' classified=',num2str(classifiedlabel) ]);
end
for j=1:plotonly
    i=II(j);
    % ** Add code here to compute k: the image closest to item(:,i)
    %    but correct(i) ~= correct(k)
    dist=norm(item(:,i)-item(:,j));
    subplot(2,plotonly,j+4);
    zalando_plot(items(:,j));
    title([num2str(j),': dist from ',num2str(i),':',num2str(dist)]);
end
