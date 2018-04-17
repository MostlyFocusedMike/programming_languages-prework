require 'pry'
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}

def reformat_languages(languages)
  languages.each_with_object({}) do |(oo_f,langs),new_lang|
    langs.each do |name,data|
      new_lang[name] = {type: data[:type]} if new_lang.has_key?(name) == false
      new_lang[name][:style] ||= []
      new_lang[name][:style] << oo_f
    end
  end
end