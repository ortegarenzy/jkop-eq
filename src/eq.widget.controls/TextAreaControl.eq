
/*
 * This file is part of Jkop
 * Copyright (c) 2016 Job and Esther Technologies, Inc.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

public interface TextAreaControl : Widget, DataAwareObject
{
	public static TextAreaControl instance() {
		return(ControlEngine.engine.create_text_area_control());
	}

	public static TextAreaControl for_string(String str) {
		var v = TextAreaControl.instance();
		if(v != null) {
			v.set_text(str);
		}
		return(v);
	}

	public TextAreaControl set_has_frame(bool v);
	public bool get_has_frame();
	public TextAreaControl set_listener(TextAreaControlListener listener);
	public TextAreaControlListener get_listener();
	public TextAreaControl set_placeholder(String text);
	public String get_placeholder();
	public TextAreaControl set_text_color(Color c);
	public Color get_text_color();
	public TextAreaControl set_text(String text);
	public String get_text();
}
