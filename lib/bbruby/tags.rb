require "bbruby/tags/version"

module BBRuby
  module Tags
    class <<self
      attr_accessor :API_KEY
    end
  end
end

module BBRuby
  (1..6).each do |i|
    @@tags.merge!(
        "H#{i}" => [
            /\[h#{i}(:.*)?\](.*?)\[\/h#{i}\1?\]/mi,
            lambda { |e| "<h#{i}>#{e[2]}</h#{i}>" },
            "Header #{i}",
            "[h#{i}]Look here[/h#{i}]",
            "h#{i}".to_sym
        ]
    )
  end

  @@tags.merge!(
      "Google place" => [
          /\[gplace(:.*)?\](.*?)\[\/gplace\1?\]/mi,
          lambda { |e| "<iframe class=\"google-place-frame\" frameborder=\"0\" style=\"border:0\" src=\"https://www.google.com/maps/embed/v1/place?key=#{BBRuby::Tags.API_KEY}&q=#{e[2]}\"></iframe>"},
          "Google place",
          "[gplace]Seattle WA[/gplace]",
          :gplace
      ]
  )
end
