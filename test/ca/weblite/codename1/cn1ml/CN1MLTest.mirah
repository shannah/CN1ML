/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package ca.weblite.codename1.cn1ml
import org.junit.Test
import org.jsoup.Jsoup
import static org.junit.Assert.*



class CN1MLTest 
  
  $Test
  def test1:void
    testHtml = CN1MLTest.class.getResourceAsStream('test.html')
    writer = CN1ML.new 'mypkg.layouts.Test'
    out = writer.buildClass(testHtml)
    puts "Result: #{out}"
  end
  
  $Test
  def testTableTagLayout:void
    html = "<table id='el'></table>"
    doc = Jsoup.parse html
    table = doc.getElementById('el')
    
    writer = CN1ML.new 'MyClass'
    cls = writer.getLayoutClass table
    assertEquals "Class should be TableLayout but found #{cls}", 'TableLayout', cls
  end
  
  $Test
  def testResolveTableTagLayout:void
    
    
    
    html = "<table id='el'></table>"
    doc = Jsoup.parse html
    table = doc.getElementById('el')
    
    writer = CN1ML.new 'MyClass'
    
    writer.test
    
    cls = writer.resolveLayoutDirective table
    assertEquals "Class should be TableLayout() but found #{cls}", 'TableLayout(1, 1)', cls
  end
  
  
end

