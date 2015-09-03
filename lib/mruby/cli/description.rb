module MRuby::CLI
  module Description
    ART = <<-ART

                          ;''''''''
                       .;''.   :';''
              `,,.,;''''''      `' ';
            :''''''',`  ';       ' `'`
       `;''''`    `''   ''`     ,'  ;'
      ;'':`'.       '   '''';:;'''   ';
      '`   ',      `'`  :'''''''''   `'`
      ':   '',    `''`   '''''''''';` ;'
      ''   ''''''''''     :'''''';;'''`';
      '''  ;'''''''''        ''      ;'`'`
      '''`  ''''''''''''     '        '`;'
      ''''    :'''.   `''`   '        '` ';
      '''':    ,'       :'   ''`    `''` `'`
      '''''    ;'       `'   ''''''''''`  ;'
      ''''''   ;'`      ''   ''''''''''    ':
      ;'''''`  ;''',`.;'''   `''''''''`    `'
      ;''''''  :''''''''''     :'''';      `'
      :'''''':  '''''''''`             `,''''
      ,'''''''   '''''''`         `,'''''''''
      .''''''''    `.`       `:''''''''''''''
      .''''''''`        `:'''''''''''''''''''
      `'''''''''`  `:''''''''''''''''''''''''
      `''''''''''''''''''''''''''''''''''''''
       ''''''''''''''''''''''';;;:'''''''''';
       '''''''''''''''''''''`      .'''''''';
       ''''''''''''''''''''     '   '''''''':
       '''''''''''''''''''     .''. ''''''''.
       ''''''''''''''''''      ;;:,`''''''''`
       ;''''''''''''''''`     ;`    ''''''''`
        ''''''''''''''''     ;';   `''''''''
        :'''''''''''''''    ''''   .''''''''
         ''''''''''''''' ,': ,''   ,''''''''
         ,'''''''''''''' ''        :''''''''
          '''''''''''''' :'        ;''''''''
          `'''''''''''''  ;        '''''''''
           '''''''''''''',.,:;''''''''''''''
           `''''''''''''''''''''''''''''''',
            ''''''''''''''''''''''''''''''`
             '''''''''''''''''''''''''.
             '''''''''''''''''''';`
              ''''''''''''''':`
              ;'''''''''',`
               ''''''.
    ART

    TEXT = <<-TEXT
      MRuby CLI
      Version: #{VERSION}
    TEXT

    def self.to_s
      output = ""
      # Colorize ASCII Art
      output << ART.gsub(/^(.*)$/){|s| "\033[31m#{s}\033[0m" }
      output << "\n"
      output << TEXT
      output << "\n"
    end
  end
end
