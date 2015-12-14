# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

# Create Regions
['Ho Chi Minh', 'Ha Noi', 'Binh Thuan', 'Da Nang', 'Lam Dong'].each do |r|
  Region.create(name: r)
end
# Create Categories
['Entertainment', 'Learning', 'Everything Else'].each do |c|
  Category.create(name: c)
end

# First event:
# Việt Nam Thử Thách Chiến Thắng

dalat = Venue.create({
  name: 'Da Lat City',
  full_address: 'Ngoc Phat Hotel 10 Hồ Tùng Mậu Phường 3, Thành phố Đà Lạt, Lâm Đồng, Thành Phố Đà Lạt, Lâm Đồng',
  region: Region.find_by(name: 'Lam Dong')
})

Event.create({
  name: 'Việt Nam Thử Thách Chiến Thắng', 
  starts_at: DateTime.parse('Fri, 11 Mar 2016 7:00 AM+0700'),
  ends_at: DateTime.parse('Sun, 13 Mar 2016 3:00 PM+0700'),
  venue: dalat,
  category: Category.find_by(name: 'Everything Else'),
  hero_image_url: 'https://az810747.vo.msecnd.net/eventcover/2015/10/25/C6A1A5.jpg?w=1040&maxheight=400&mode=crop&anchor=topcenter',
  extended_html_description: <<-DESC
    <p style="text-align:center"><span style="font-size:20px">VIỆT NAM THỬ THÁCH CHIẾN THẮNG 2016</span></p>
    <p style="text-align:center"><span style="font-size:20px">Giải đua xe đạp địa hình 11-13/03/2016</span></p>
    <p style="text-align:center"><span style="font-size:16px"><span style="font-family:arial,helvetica,sans-serif">Việt Nam Th</span>ử Thách Chiến Thắng là giải đua xe đạp địa hình được tổ chức như một sự tri ân, và cũng nhằm thỏa mãn lòng đam mẹ của những người yêu xe đạp địa hình nói chung, cũng như cho những ai đóng góp vào môn thể thao đua xe đạp tại thành phố Hồ Chí Minh. Cuộc đua diễn ra ở thành phố cao nguyên hùng vĩ Đà Lạt, với độ cao 1,500m (4,900ft) so với mặt nước biển. Đến với đường đua này ngoài việc tận hưởng cảnh quan nơi đây, bạn còn có cơ hội biết thêm về nền văn hóa của thành phố này. </span></p>
    <p style="text-align:center"><span style="font-size:16px">Hãy cùng với hơn 350 tay đua trải nghiệm 04 lộ trình đua tuyệt vời diễn ra trong 03 ngày tại Đà Lạt và bạn sẽ có những kỉ niệm không bao giờ quên!</span></p>
    <p style="text-align:center"><span style="font-size:16px">Để biết thêm thông tin chi tiết và tạo thêm hứng khởi cho cuộc đua 2016, vui lòng ghé thăm trang web</span></p>
    <p style="text-align:center"><span style="font-size:16px"><strong><span style="background-color:transparent; color:rgb(0, 0, 0)">www.vietnamvictorychallenge.com. </span></strong></span></p>
  DESC
})

# Second event:
# Dan Truong
dan_venue = Venue.create({
  name: 'Sân vận động quân khu 7',
  full_address: '202 Hoàng Văn Thụ, Quận Tân Bình, Hồ Chí Minh',
  region: Region.find_by(name: 'Ho Chi Minh')
})


Event.create({
  name: 'Cảm ơn Đời - Live Concert Đan Trường', 
  venue: dan_venue,
  category: Category.find_by(name: 'Entertainment'),
  starts_at: DateTime.parse('Sat, 16 Jan 2016, 8:00 PM+0700'),
  ends_at: DateTime.parse('Sat, 16 Jan 2016, 10:30 PM+0700'),  
  hero_image_url: 'https://az810747.vo.msecnd.net/eventcover/2015/12/11/C68636.jpg?w=1040&maxheight=400&mode=crop&anchor=topcenter',
  extended_html_description: <<-DESC
  <p style="text-align:justify"> </p>

  <p style="text-align:justify">Đan Trường cũng tiết lộ kế hoạch chuẩn bị cho live show kỷ niệm 20 năm ca hát của anh, sẽ diễn ra vào ngày 16-1-2016. “Nói ra, mọi người bảo tôi lo xa nhưng tính tôi là vậy. Tôi là người kỹ tính và chỉn chu trong mọi việc nên không cho phép sai sót, dù nhỏ, trong live show của mình. Để đạt được điều ấy, tôi phải chuẩn bị thật kỹ. Đó là chưa kể có rất nhiều chuyện phải làm cho đến khi diễn ra live show, như phát hành các sản phẩm âm nhạc” - anh tâm sự.</p>

  <p style="text-align:justify"> </p>

  <p style="text-align:justify"><img src="https://az810747.vo.msecnd.net/agenda/2015/12/14/57EEE9.jpg" /></p>

  <p style="text-align:justify"> </p>

  <p style="text-align:justify">Vẫn là một Đan Trường đa năng bởi sự đa sắc trong âm nhạc, anh đang khát vọng chinh phục mọi đối tượng công chúng yêu nhạc của mình một cách hoàn hảo nhất. Mỗi người có một nhận định, đánh giá riêng về chất giọng cũng như phong cách biểu diễn của Đan Trường nhưng những thành tích mà ca sĩ này gặt hái được trong suốt nhiều năm theo đuổi nghiệp hát thì không ai có thể phủ nhận. 19 năm ca hát, Đan Trường của ngày nay vẫn là một giọng ca được đông đảo công chúng yêu mến.</p>

  <p style="text-align:justify"> </p>

  <p style="text-align:justify">Xét ở mọi góc độ, thành công của ca sĩ Đan Trường tại thị trường âm nhạc còn sơ khai như của Việt Nam những năm cuối thập niên 1990 có thể xem là một kỳ tích. Anh xuất hiện khiêm tốn nhưng nhanh chóng tỏa sáng và trở nên nổi bật giữa một rừng ngôi sao ca nhạc Việt Nam lúc ấy.</p>

  <p style="text-align:justify"> </p>

  <p style="text-align:justify">Nhìn lại hành trình đã qua của Đan Trường, không thể bỏ qua yếu tố may mắn khi mọi thứ đối với anh gần như được trải hoa hồng. “Thành tựu 19 năm qua mà tôi có được rõ ràng là nhờ may mắn nhưng nếu không có sự cố gắng và nỗ lực một cách tận tâm của mình và cả ông bầu Hoàng Tuấn, tôi không tin có thể đạt được như vậy. Một nghệ sĩ trụ lâu được ở thị trường giải trí là nhờ sự ủng hộ của khán giả nhưng nếu nghệ sĩ ấy không chứng minh cho khán giả thấy mình xứng đáng được yêu mến, công chúng cũng sẽ quay lưng” - Đan Trường chiêm nghiệm.</p>

  <p style="text-align:justify"> </p>

  <p style="text-align:justify">“Đan Trường chính là hiện thân một ca sĩ thần tượng đúng nghĩa nhất bởi hiệu ứng tổng thể mang lại từ vóc dáng, giọng hát tình cảm và quan trọng hơn là cách chọn bài hát khá khéo léo của anh. Đan Trường luôn có những ca khúc ăn khách mỗi khi giới thiệu một sản phẩm âm nhạc mới” - ca sĩ Cẩm Ly nhận xét.</p>

  <p style="text-align:justify"> </p>

  <p style="text-align:justify">Theo nhạc sĩ Hữu Minh, những cái mới phù hợp với trào lưu hiện tại cũng như với văn hóa của người Việt sẽ mau chóng được công chúng đón nhận. “Thành công của Đan Trường một phần là nhờ sự đón đầu xu hướng mới đó” - nhạc sĩ này khẳng định.</p>

  <p style="text-align:justify"> </p>

  <p style="text-align:justify">Mỗi sản phẩm âm nhạc của Đan Trường khi ra mắt đều trở thành bản hit (ăn khách) trên các bảng xếp hạng. Hẳn nhiên, sự yêu mến không điều kiện, vô tư của lực lượng fan (người hâm mộ) hùng hậu đã góp phần không nhỏ trong việc đưa một ca khúc mới của thần tượng đứng đầu bảng xếp hạng âm nhạc. Song, không khó để nhận ra Đan Trường là ca sĩ không ngại thể nghiệm những điều mới mẻ để mang đến người yêu nhạc những sản phẩm lạ tai, đón đầu xu hướng.</p>

  <p style="text-align:justify"> </p>

  <p style="text-align:justify"><img src="https://az810747.vo.msecnd.net/agenda/2015/12/14/06EAAD.jpg" /></p>

  <p style="text-align:justify"> </p>

  <p style="text-align:justify"> </p>

  <p style="text-align:justify">Từ nhạc trẻ, trữ tình, âm hưởng dân ca, sử ca, truyền thống cách mạng, đến cả nhạc dance, hip hop, R&B..., Đan Trường đều thử sức, bất chấp tuổi tác. Sự nỗ lực đó luôn mang lại cho anh những quả ngọt là sự đón nhận của khán giả, thậm chí trong từng thể loại âm nhạc khác nhau.</p>

  <p style="text-align:justify"> </p>

  <p style="text-align:center"><span style="font-size:20px"><strong>HOTLINE ĐẶT VÉ: 091-333-2198</strong></span></p>

  <p style="text-align:justify"> </p>

  <p style="text-align:justify"><img src="https://az810747.vo.msecnd.net/agenda/2015/12/14/0714C1.jpg" /></p>

  <p style="text-align:justify"> </p>

                          </div>
                          
                          <!--/agenda-->
                      </div>
                  </div>

  DESC
})
