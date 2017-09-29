defmodule Bluemix.NaturalLangUnderstanding do

  @doc """
  Analyze features of natural language content.

  features:
        concepts
        categories
        emotion
        entities
        keywords
        metadata
        relations
        semantic_roles
        sentiment

  See https://www.ibm.com/watson/developercloud/natural-language-understanding/api/v1/?curl#get-analyze

  ## Example

    iex> Bluemix.NaturalLangUnderstanding.analyze("https://www.sec.gov/news/press-release/2017-176", "entities,categories,keywords")

  """
  def analyze(url, features \\ "keywords,entities", headers \\ []) do
    url = Application.get_env(:bluemix, :url) <> "/v1/analyze?version=2017-02-27&url=#{url}&features=#{features}"
    username = Application.get_env(:bluemix, :username)
    password = Application.get_env(:bluemix, :password)
    hackney = [basic_auth: {username, password}]
    case HTTPoison.get(url, headers, [hackney: hackney]) do
      {:ok, response} -> Poison.decode!(response.body)
      {:error, err} -> err
    end
  end

  def analyze_text(text, features \\ "keywords,entities", headers \\ []) do
    text = URI.encode(text)
    url = Application.get_env(:bluemix, :url) <> "/v1/analyze?version=2017-02-27&text=#{text}&features=#{features}"
    username = Application.get_env(:bluemix, :username)
    password = Application.get_env(:bluemix, :password)
    hackney = [basic_auth: {username, password}]
    case HTTPoison.get(url, headers, [hackney: hackney]) do
      {:ok, response} -> Poison.decode!(response.body)
      {:error, err} -> err
    end
  end
end
