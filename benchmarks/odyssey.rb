$LOAD_PATH << File.join(File.dirname(__FILE__), "lib")

require "benchmark/ips"
require "odyssey"
require "flesch_kincaid"

TEXT = DATA.read

Benchmark.ips do |test|

  test.report "Odyssey" do
    Odyssey.flesch_kincaid_re(TEXT, false)
  end

  test.report "Flesch Kincaid" do
    FleschKincaid.read(TEXT).score
  end

end

__END__
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam commodo lobortis justo eget interdum. Nullam lorem ex, efficitur nec ornare eu, fringilla ac nulla. Nulla facilisi. Donec accumsan accumsan sem, et dignissim dolor porta at. Nulla fringilla magna ac magna tincidunt mattis. Quisque aliquet, est nec tristique blandit, felis odio efficitur dui, in convallis massa orci ut nisl. Nullam hendrerit justo vel ante placerat, et imperdiet urna volutpat. Proin risus libero, accumsan ut tellus a, lacinia ultricies nisl. Fusce ultricies interdum diam, vitae tincidunt odio maximus id. Praesent in tortor aliquam mi pulvinar dignissim. Interdum et malesuada fames ac ante ipsum primis in faucibus.

Suspendisse et odio justo. Maecenas dolor ipsum, commodo et justo et, pulvinar hendrerit sapien. Donec dapibus lacus nec eros congue tincidunt. Vestibulum ut eleifend nibh. Curabitur vehicula dui mollis, tempor odio eget, dignissim lorem. In tempus, nisl sed feugiat luctus, enim dolor sollicitudin velit, nec cursus erat sapien non purus. Sed in lacus et lectus vestibulum fermentum. Integer et dignissim purus, sit amet fringilla ante. In finibus sed orci non rhoncus. Maecenas a tempus augue. Pellentesque vel justo id odio condimentum porta.

Morbi pulvinar dignissim lorem, a tincidunt sem tempor nec. Suspendisse ultrices sapien ut nisi vehicula varius. Aenean pharetra ligula et convallis blandit. Curabitur iaculis eget mauris et interdum. Aenean rhoncus eros sed placerat semper. Aenean a ex elementum, tincidunt risus sit amet, ultricies est. Ut aliquet urna a blandit aliquam. Quisque vel porttitor ex. Curabitur erat odio, dapibus ac tortor sit amet, auctor finibus augue. Suspendisse varius sit amet ligula sed ornare. Duis consectetur posuere pharetra. Praesent ornare ante blandit sem tincidunt fringilla. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam erat volutpat. Morbi auctor elit vel sollicitudin tincidunt. Duis auctor sit amet tellus iaculis maximus.

In finibus cursus lectus, ac elementum ante volutpat non. Duis rhoncus euismod purus vitae placerat. Donec vitae tempor velit, quis egestas purus. Mauris condimentum tellus vitae diam laoreet mattis. Nulla lobortis lectus sit amet neque volutpat, sed dapibus lacus tempus. Nullam ligula tellus, tempus auctor faucibus eu, efficitur in odio. Proin molestie fringilla turpis in rhoncus. Nam sollicitudin magna vulputate est luctus, ut porta libero facilisis. Mauris rhoncus nisl a arcu interdum, a pulvinar justo vestibulum. Nulla quis sodales ipsum. Donec nulla felis, hendrerit ac mauris lobortis, suscipit eleifend lectus. Suspendisse nisi mi, imperdiet nec iaculis eu, vestibulum at nisl.

Donec sit amet lectus quis justo faucibus sagittis. Proin eros mauris, sodales non arcu in, ullamcorper tristique lectus. Mauris dignissim tempus nunc, sed mattis ipsum tincidunt nec. Praesent tristique urna sem, euismod vulputate risus tempor quis. Donec nec lacinia eros. Nulla mauris felis, ultrices ac molestie et, vulputate id odio. Aliquam ac imperdiet libero, at faucibus ipsum. Nulla sollicitudin pharetra tempor. Donec turpis purus, maximus id molestie vitae, vulputate sit amet odio.

Morbi aliquam metus urna, ut porta nibh mattis ac. Pellentesque ut neque magna. Quisque pellentesque enim eu nunc commodo condimentum. Proin id posuere dui, vitae euismod sem. Suspendisse et metus ex. Ut vulputate pellentesque orci, in sagittis nisi laoreet eu. Donec ac arcu dui. Fusce suscipit imperdiet elementum.

Ut dapibus aliquet nibh a posuere. Vivamus accumsan sapien quis augue dictum vehicula. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer sit amet lacus massa. Duis pretium eleifend ante et vulputate. Praesent iaculis eu erat vel ornare. Donec luctus nisl ac purus consequat, nec sagittis mauris tincidunt.

Nulla molestie placerat nisi, nec sollicitudin elit venenatis eu. In malesuada, nunc sed feugiat vulputate, neque erat tincidunt sapien, quis convallis purus leo et arcu. Proin vel ligula id enim aliquet commodo. Aliquam semper justo sed finibus tempus. Praesent ullamcorper sit amet mi sed ullamcorper. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec ultrices purus nulla, vel ultrices risus aliquet eu. Nunc dolor sapien, faucibus quis quam sit amet, aliquam vehicula mi. Cras accumsan semper augue, id consectetur mauris elementum ac. Donec quis nulla non eros tempus bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit.