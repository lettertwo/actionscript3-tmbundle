﻿package fl.controls
{
import fl.data.DataProvider;
import fl.containers.BaseScrollPane;
import fl.controls.BaseButton;
import fl.controls.List;
import fl.controls.listClasses.ICellRenderer;
import fl.controls.TextInput;
import fl.controls.TextArea;
import fl.controls.ScrollBar;
import fl.controls.SelectableList;
import fl.core.InvalidationType;
import fl.core.UIComponent;
import fl.events.ComponentEvent;
import fl.events.DataChangeEvent;
import fl.events.DataChangeType;
import fl.events.ListEvent;
import fl.managers.IFocusManagerComponent;
import fl.data.DataProvider;
import fl.data.SimpleCollectionItem;
import flash.display.DisplayObject;
import flash.events.Event;
import flash.events.FocusEvent;
import flash.events.KeyboardEvent;
import flash.events.MouseEvent;
import flash.events.TextEvent;
import flash.geom.Point;
import flash.system.IME;
import flash.text.TextField;
import flash.text.TextFormat;
import flash.ui.Keyboard;
public class ComboBox extends UIComponent implements IFocusManagerComponent
{
		protected var inputField : TextInput;
		protected var background : BaseButton;
		protected var list : List;
		protected var _rowCount : uint;
		protected var _editable : Boolean;
		protected var isOpen : Boolean;
		protected var highlightedCell : int;
		protected var editableValue : String;
		protected var _prompt : String;
		protected var isKeyDown : Boolean;
		protected var currentIndex : int;
		protected var listOverIndex : uint;
		protected var _dropdownWidth : Number;
		protected var _labels : Array;
		private var collectionItemImport : SimpleCollectionItem;
		private static var defaultStyles : Object;
		protected static const LIST_STYLES : Object;
		protected static const BACKGROUND_STYLES : Object;
		public static var createAccessibilityImplementation : Function;
		public function get editable () : Boolean;
		public function set editable (value:Boolean) : Void;
		public function get rowCount () : uint;
		public function set rowCount (value:uint) : Void;
		public function get restrict () : String;
		public function set restrict (value:String) : Void;
		public function get selectedIndex () : int;
		public function set selectedIndex (value:int) : Void;
		public function get text () : String;
		public function set text (value:String) : Void;
		public function get labelField () : String;
		public function set labelField (value:String) : Void;
		public function get labelFunction () : Function;
		public function set labelFunction (value:Function) : Void;
		public function get selectedItem () : Object;
		public function set selectedItem (value:Object) : Void;
		public function get dropdown () : List;
		public function get length () : int;
		public function get textField () : TextInput;
		public function get value () : String;
		public function get dataProvider () : DataProvider;
		public function set dataProvider (value:DataProvider) : Void;
		public function get dropdownWidth () : Number;
		public function set dropdownWidth (value:Number) : Void;
		public function get prompt () : String;
		public function set prompt (value:String) : Void;
		public function get imeMode () : String;
		public function set imeMode (value:String) : Void;
		public function get selectedLabel () : String;
		public static function getStyleDefinition () : Object;
		public function ComboBox ();
		public function itemToLabel (item:Object) : String;
		public function addItem (item:Object) : void;
		public function addItemAt (item:Object, index:uint) : void;
		public function removeAll () : void;
		public function removeItem (item:Object) : Object;
		public function removeItemAt (index:uint) : void;
		public function getItemAt (index:uint) : Object;
		public function replaceItemAt (item:Object, index:uint) : Object;
		public function sortItems (...sortArgs:Array) : *;
		public function sortItemsOn (field:String, options:Object =null) : *;
		public function open () : void;
		public function close () : void;
		protected function configUI () : void;
		protected function focusInHandler (event:FocusEvent) : void;
		protected function focusOutHandler (event:FocusEvent) : void;
		protected function handleDataChange (event:DataChangeEvent) : void;
		protected function draw () : void;
		protected function setEmbedFonts () : void;
		protected function showPrompt () : void;
		protected function setStyles () : void;
		protected function drawLayout () : void;
		protected function drawTextFormat () : void;
		protected function drawList () : void;
		protected function positionList () : void;
		protected function drawTextField () : void;
		protected function onInputFieldFocus (event:FocusEvent) : void;
		protected function onInputFieldFocusOut (event:FocusEvent) : void;
		protected function onEnter (event:ComponentEvent) : void;
		protected function onToggleListVisibility (event:MouseEvent) : void;
		protected function onListItemUp (event:MouseEvent) : void;
		protected function onListChange (event:Event) : void;
		protected function onStageClick (event:MouseEvent) : void;
		protected function passEvent (event:Event) : void;
		private function addCloseListener (event:Event);
		protected function onTextInput (event:Event) : void;
		protected function calculateAvailableHeight () : Number;
		protected function keyDownHandler (event:KeyboardEvent) : void;
		protected function highlightCell (index:int =-1) : void;
		protected function keyUpHandler (event:KeyboardEvent) : void;
		protected function initializeAccessibility () : void;
}
}