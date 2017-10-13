package as3hx;
import as3hx.Config;
import as3hx.Parser;
import as3hx.Writer;
import haxe.io.BytesOutput;
import massive.munit.Assert;
import sys.FileSystem;
import sys.io.File;

class FProjectTest {

    public function new() {}
    
    var cfg:Config;
    var parser:Parser;
    var writer:Writer;
    var output:haxe.io.BytesOutput;
    
    @BeforeClass
    public function beforeClass() {
        cfg = new Config();
        parser = new Parser(cfg);
        writer = new Writer(cfg);
        output = new BytesOutput();
    }
    
    @Test("custom namespace variables declaration")
    public function fproject001() {
        generate("FProject001.as", "FProject001.hx");
    }

    @Test("custom namespace variables use implicitly")
    public function fproject002() {
        generate("FProject002.as", "FProject002.hx");
    }

    @Test("custom namespace variables use explicitly")
    public function fproject003() {
        generate("FProject003.as", "FProject003.hx");
    }

    @Test("custom namespace variables use explicitly")
    public function fproject004() {
        generate("FProject004.as", "FProject004.hx");
    }

    function generate(as3FileName:String, expectedHaxeFileName:String) {
        var issuesDirectory = FileSystem.absolutePath("test/issues");
        var generatedDirectoryPath = '$issuesDirectory/generated';
        if (!FileSystem.exists(generatedDirectoryPath)) FileSystem.createDirectory(generatedDirectoryPath);
        var content = File.getContent('$issuesDirectory/$as3FileName');
        var program = parser.parseString(content, issuesDirectory, '$issuesDirectory/$as3FileName');
        var fw = File.write('$generatedDirectoryPath/$expectedHaxeFileName', false);
        writer.process(program, fw);
        fw.close();
        var expectedText = File.getContent('$issuesDirectory/$expectedHaxeFileName');
        var actualText = File.getContent('$generatedDirectoryPath/$expectedHaxeFileName');
        Assert.areEqual(expectedText, actualText);
    }
}