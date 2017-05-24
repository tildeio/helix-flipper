require "text_transform"

describe "TextTransform" do
  it "can flip text" do
    expect(TextTransform.flip("Hello Aaron (@tenderlove)!")).to eq("¡(ǝʌolɹǝpuǝʇ@) uoɹɐ∀ ollǝH")
  end

  it "can flip the text back" do
    expect(TextTransform.flip("¡(ǝʌolɹǝpuǝʇ@) uoɹɐ∀ ollǝH")).to eq("Hello Aaron (@tenderlove)!")
  end

  it "can flip table" do
    expect(TextTransform.flip("┬──┬ ノ( ゜-゜ノ)")).to eq("(╯°□°）╯︵ ┻━┻")
  end

  it "can flip the table back" do
    expect(TextTransform.flip("(╯°□°）╯︵ ┻━┻")).to eq("┬──┬ ノ( ゜-゜ノ)")
  end
end