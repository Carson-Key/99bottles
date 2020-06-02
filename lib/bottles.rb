class Bottles
  def determinPlural(bottles)
    if (bottles == 1)
      # for some reason if I add an s to bottles here it prints fine, but when I remove it
      # the first line doesn't print, and I have no idea why
      return "#{bottles} bottle"
    elsif (bottles == 0)
      return "no more bottles"
    else
      return "#{bottles} bottles"
    end
  end

  def verse(bottles)
    pluralBottle = determinPlural(bottles)
    pluralNextBottle = determinPlural(bottles - 1)

    <<-VERSE
#{pluralBottle} of beer on the wall, #{pluralBottle} of beer.
Take one down and pass it around, #{pluralNextBottle} of beer on the wall.
VERSE
  end
end
