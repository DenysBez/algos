spy_data = hist_stock_data('05012005','10122014','SPY'); #'10112014'
num_of_trading_days = length(spy_data.Date);

SerialDates = zeros(numel(spy_data.Date)-1,1);
for ii=2:(numel(spy_data.Date)) 
 SerialDates(ii-1) = datenum(spy_data.Date{ii},'yyyy-mm-dd'); 
end



SPY.dates = flipud(SerialDates);
SPY.prices = flipud(spy_data.Close(2:end));
SPY.volume = flipud(spy_data.Volume(2:end));
SPY.mvavg10 = movingAverage(flipud(spy_data.Close(2:end)), 10)';
SPY.mvavg15 = movingAverage(flipud(spy_data.Close(2:end)), 15)';

figure('Color',[0.8 0.8 0.8]);
subplot(2,1,1);
plot(SPY.dates, SPY.prices, '-');

hold on;  
plot(SPY.dates(1:10), SPY.mvavg10, '*c');
plot(SPY.dates(1:15), SPY.mvavg15, '-r');
datetick('x',10);
grid on;  
xlabel('dates');
ylabel('prices');
title('Equidty Price Data Series and Moving Averages');

hold off;
subplot(2,1,2);
plot(SPY.dates, SPY.volume, 'm');
grid on;
datetick('x',10);
xlabel('dates');
ylabel('prices');
title('SPY Volume');

