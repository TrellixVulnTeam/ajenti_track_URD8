// Generated by CoffeeScript 1.8.0
(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
    __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  window.Controls.textbox = (function(_super) {
    __extends(textbox, _super);

    function textbox() {
      return textbox.__super__.constructor.apply(this, arguments);
    }

    textbox.prototype.createDom = function() {
      return "<input class=\"control textbox " + (this.s(this.properties.style)) + "\"\n        " + (this.properties.readonly ? 'readonly' : '') + "\n        type=\"" + this.properties.type + "\" />";
    };

    textbox.prototype.setupDom = function(dom) {
      var _ref;
      textbox.__super__.setupDom.call(this, dom);
      this.input = this.dom;
      this.input.value = (_ref = this.properties.value) != null ? _ref : '';
      this.input.addEventListener('change', (function(_this) {
        return function() {
          return _this.markChanged();
        };
      })(this), false);
      return this;
    };

    textbox.prototype.getValue = function() {
      return $(this.input).val();
    };

    textbox.prototype.detectUpdates = function() {
      var oldvalue, r, value;
      r = {};
      value = this.getValue();
      oldvalue = this.properties.value || "";
      if (this.properties.type === 'integer') {
        value = parseInt(value) || null;
      }
      if (value !== oldvalue) {
        r.value = value;
      }
      this.properties.value = value;
      return r;
    };

    return textbox;

  })(window.Control);

  window.Controls.passwordbox = (function(_super) {
    __extends(passwordbox, _super);

    function passwordbox() {
      return passwordbox.__super__.constructor.apply(this, arguments);
    }

    passwordbox.prototype.createDom = function() {
      return "<input class=\"control textbox " + this.properties.style + "\"\n        type=\"password\" />";
    };

    passwordbox.prototype.setupDom = function(dom) {
      passwordbox.__super__.setupDom.call(this, dom);
      this.input = $(this.dom);
      this.input.val(this.properties.value);
      this.input.change((function(_this) {
        return function() {
          return _this.markChanged();
        };
      })(this));
      return this;
    };

    return passwordbox;

  })(window.Controls.textbox);

  window.Controls.datetime = (function(_super) {
    __extends(datetime, _super);

    function datetime() {
      return datetime.__super__.constructor.apply(this, arguments);
    }

    datetime.prototype.createDom = function() {
      return "<div class=\"control datetime\">\n    <input class=\"control textbox date " + (this.s(this.properties.style)) + "\" />\n    <input class=\"control textbox time " + (this.s(this.properties.style)) + "\" />\n</div>";
    };

    datetime.prototype.setupDom = function(dom) {
      var markChanged, value;
      datetime.__super__.setupDom.call(this, dom);
      value = null;
      if (this.properties.value) {
        value = new Date(parseInt(this.properties.value) * 1000);
      }
      markChanged = this.markChanged;
      this.inputTime = jQuery(this.dom.children[1]).pickatime({
        interval: 1,
        onClose: function() {
          return markChanged();
        }
      }).pickatime('picker');
      this.inputDate = jQuery(this.dom.children[0]).pickadate({
        onClose: function() {
          return markChanged();
        }
      }).pickadate('picker');
      if (value) {
        this.inputDate.set('select', value);
        this.inputTime.set('select', value);
      }
      return this;
    };

    datetime.prototype.getValue = function() {
      var date, time, value;
      value = this.inputDate.get('select');
      if (value) {
        date = value.obj;
        if (!date) {
          return null;
        }
        time = this.inputTime.get('select');
        if (time) {
          date.setHours(time.hour);
          date.setMinutes(time.mins);
        }
        return Math.round(date.getTime() / 1000);
      }
    };

    datetime.prototype.detectUpdates = function() {
      var oldvalue, r, value;
      r = {};
      value = this.getValue();
      oldvalue = this.properties.value || "";
      if (value !== oldvalue) {
        r.value = value;
      }
      this.properties.value = value;
      return r;
    };

    return datetime;

  })(window.Control);

  window.Controls.editable = (function(_super) {
    __extends(editable, _super);

    function editable() {
      this.goEditMode = __bind(this.goEditMode, this);
      this.goViewMode = __bind(this.goViewMode, this);
      return editable.__super__.constructor.apply(this, arguments);
    }

    editable.prototype.createDom = function() {
      var icon, _ref;
      icon = _make_icon(this.properties.icon);
      return "<div class=\"control editable\">\n    <div class=\"control label\">" + icon + " <span>" + (this.s((_ref = this.properties.placeholder) != null ? _ref : this.properties.value)) + "</span></div>\n    <input class=\"control textbox " + this.properties.style + "\" type=\"text\" />\n</div>";
    };

    editable.prototype.setupDom = function(dom) {
      editable.__super__.setupDom.call(this, dom);
      this.label = $(this.dom).find('.label');
      this.input = $(this.dom).find('input');
      this.input.val(this.properties.value || '');
      this.input.hide();
      this.input.change((function(_this) {
        return function() {
          return _this.markChanged();
        };
      })(this));
      this.editmode = false;
      this.label.click(this.goEditMode);
      this.input.blur(this.goViewMode);
      this.input.keyup((function(_this) {
        return function(e) {
          if (e.which === 13) {
            _this.goViewMode();
          }
          return _this.cancel(e);
        };
      })(this));
      return this;
    };

    editable.prototype.goViewMode = function() {
      var _ref;
      this.editmode = false;
      this.label.find('span').html((_ref = this.properties.placeholder) != null ? _ref : this.input.val());
      this.input.hide();
      return this.label.show();
    };

    editable.prototype.goEditMode = function(e) {
      this.editmode = true;
      this.label.hide();
      this.input.show();
      this.input.focus();
      e.stopPropagation();
      return e.preventDefault();
    };

    editable.prototype.detectUpdates = function() {
      var r, value;
      r = {};
      if (this.editmode) {
        goViewMode();
      }
      value = this.input.val();
      if (this.properties.type === 'integer') {
        value = parseInt(value);
      }
      if (value !== this.properties.value) {
        r.value = value;
      }
      return r;
    };

    return editable;

  })(window.Control);

  window.Controls.checkbox = (function(_super) {
    __extends(checkbox, _super);

    function checkbox() {
      return checkbox.__super__.constructor.apply(this, arguments);
    }

    checkbox.prototype.createDom = function() {
      return "<div class=\"control checkbox\">\n    <input\n        id=\"" + this.properties.uid + "\"\n        type=\"checkbox\"\n        " + (this.properties.value ? 'checked="checked"' : '') + "\n    />\n    <label for=\"" + this.properties.uid + "\">\n        <div class=\"tick\">\n            <i class=\"icon-ok\"></i>\n        </div>\n    </label>\n    <label for=\"" + this.properties.uid + "\" class=\"control label\">" + (this.s(this.properties.text)) + "</label>\n</div>";
    };

    checkbox.prototype.setupDom = function(dom) {
      checkbox.__super__.setupDom.call(this, dom);
      this.input = $(this.dom).find('input');
      this.input.change((function(_this) {
        return function() {
          return _this.markChanged();
        };
      })(this));
      return this;
    };

    checkbox.prototype.detectUpdates = function() {
      var checked, r;
      r = {};
      checked = this.input.is(':checked');
      if (checked !== this.properties.value) {
        r.value = checked;
      }
      this.properties.value = checked;
      return r;
    };

    return checkbox;

  })(window.Control);

  window.Controls.dropdown = (function(_super) {
    __extends(dropdown, _super);

    function dropdown() {
      return dropdown.__super__.constructor.apply(this, arguments);
    }

    dropdown.prototype.createDom = function() {
      return "<div><select class=\"control dropdown\"></select></div>";
    };

    dropdown.prototype.setupDom = function(dom) {
      var i, _fn, _i, _ref;
      dropdown.__super__.setupDom.call(this, dom);
      this.input = jQuery(this.dom).find('select');
      this.data = [];
      _fn = (function(_this) {
        return function(i) {
          return _this.input.append("<option value=\"" + i + "\" " + (i === _this.properties.index ? 'selected' : '') + ">" + (_this.s(_this.properties.labels[i])) + "</option>");
        };
      })(this);
      for (i = _i = 0, _ref = this.properties.labels.length; 0 <= _ref ? _i < _ref : _i > _ref; i = 0 <= _ref ? ++_i : --_i) {
        _fn(i);
      }
      if (!this.properties.plain) {
        setTimeout((function(_this) {
          return function() {
            return _this.input.select2();
          };
        })(this), 0);
      }
      this.input.change((function(_this) {
        return function() {
          return _this.markChanged();
        };
      })(this));
      if (this.properties.server) {
        this.input.change((function(_this) {
          return function(e) {
            _this.event('change', {});
            return _this.cancel(e);
          };
        })(this));
      }
      return this;
    };

    dropdown.prototype.detectUpdates = function() {
      var index, r;
      r = {};
      index = parseInt(this.input.val());
      if (index !== this.properties.index) {
        r.index = index;
      }
      this.properties.index = index;
      return r;
    };

    return dropdown;

  })(window.Control);

  window.Controls.combobox = (function(_super) {
    __extends(combobox, _super);

    function combobox() {
      return combobox.__super__.constructor.apply(this, arguments);
    }

    combobox.prototype.createDom = function() {
      return "<input class=\"control combobox\" type=\"text\" value=\"" + this.properties.value + "\" />";
    };

    combobox.prototype.setupDom = function(dom) {
      var i, _fn, _i, _ref;
      combobox.__super__.setupDom.call(this, dom);
      this.input = $(this.dom);
      this.input.change((function(_this) {
        return function() {
          return _this.markChanged();
        };
      })(this));
      this.data = [];
      _fn = (function(_this) {
        return function(i) {
          return _this.data.push({
            label: _this.properties.labels[i],
            value: _this.properties.values[i]
          });
        };
      })(this);
      for (i = _i = 0, _ref = this.properties.labels.length; 0 <= _ref ? _i < _ref : _i > _ref; i = 0 <= _ref ? ++_i : --_i) {
        _fn(i);
      }
      if (this.properties.separator !== null) {
        jQuery(this.input[0]).autocomplete({
          source: (function(_this) {
            return function(request, response) {
              var vals;
              vals = _this.getVals();
              return response(jQuery.ui.autocomplete.filter(_this.data, vals.pop()));
            };
          })(this),
          focus: (function(_this) {
            return function() {
              return false;
            };
          })(this),
          select: (function(_this) {
            return function(event, ui) {
              var vals;
              vals = _this.getVals();
              vals.pop();
              vals.push(ui.item.value);
              _this.input.val(vals.join(_this.properties.separator));
              return false;
            };
          })(this),
          minLength: 0
        });
      } else {
        jQuery(this.input[0]).autocomplete({
          source: this.data,
          minLength: 0
        });
      }
      this.input.click((function(_this) {
        return function() {
          return jQuery(_this.input[0]).autocomplete('search', '');
        };
      })(this));
      return this;
    };

    combobox.prototype.getVals = function() {
      return this.input.val().split(this.properties.separator);
    };

    combobox.prototype.detectUpdates = function() {
      var r, value;
      r = {};
      value = this.input.val();
      if (this.properties.type === 'integer') {
        value = parseInt(value);
      }
      if (value !== this.properties.value) {
        r.value = value;
      }
      this.properties.value = value;
      return r;
    };

    return combobox;

  })(window.Control);

  window.Controls.fileupload = (function(_super) {
    __extends(fileupload, _super);

    function fileupload() {
      return fileupload.__super__.constructor.apply(this, arguments);
    }

    fileupload.prototype.createDom = function() {
      return "<div class=\"control fileupload\">\n    <input type=\"file\" />\n\n    <div class=\"full-overlay\">\n        <div class=\"content\">\n            <div class=\"inner\">\n                <h1>Upload</h1>\n                <div class=\"pb\"></div>\n            </div>\n        </div>\n    </div>\n</div>";
    };

    fileupload.prototype.setupDom = function(dom) {
      fileupload.__super__.setupDom.call(this, dom);
      this.progress = new window.Controls.progressbar(this.ui, {
        width: 750
      }, []);
      this.progress.setupDom();
      $(this.dom).find('.pb').append($(this.progress.dom));
      this.input = $(this.dom).find('input')[0];
      this.input.addEventListener('change', (function(_this) {
        return function(e) {
          var d, file, xhr;
          file = _this.input.files[0];
          xhr = new XMLHttpRequest();
          xhr.file = file;
          if (xhr.upload) {
            xhr.upload.onprogress = function(e) {
              var done, progress, total;
              done = e.position || e.loaded;
              total = e.totalSize || e.total;
              progress = 1.0 * done / total;
              return _this.progress.setProgress(progress);
            };
          }
          d = new FormData();
          d.append('file', file);
          xhr.open('post', _this.properties.target, true);
          xhr.send(d);
          return $(_this.dom).find('.full-overlay').show();
        };
      })(this), false);
      return $(this.dom).find('.full-overlay').hide();
    };

    return fileupload;

  })(window.Control);

  window.Controls.paging = (function(_super) {
    __extends(paging, _super);

    function paging() {
      return paging.__super__.constructor.apply(this, arguments);
    }

    paging.prototype.createDom = function() {
      return "<div class=\"control paging\">\n    <div class=\"control label\">Page:&nbsp;</div>\n    <a class=\"prev control button style-mini\"><i class=\"icon-arrow-left\"></i></a>\n    <select class=\"control dropdown\"></select>\n    <a class=\"next control button style-mini\"><i class=\"icon-arrow-right\"></i></a>\n</div>";
    };

    paging.prototype.setupDom = function(dom) {
      var i, _i, _ref;
      paging.__super__.setupDom.call(this, dom);
      this.select = jQuery(this.dom).find('select');
      for (i = _i = 0, _ref = this.properties.length; 0 <= _ref ? _i < _ref : _i > _ref; i = 0 <= _ref ? ++_i : --_i) {
        this.select.append($$("<option value=\"" + (i + 1) + "\">" + (i + 1) + "</option>"));
      }
      this.select.val(this.properties.active + 1);
      this.select.select2({
        width: '80px'
      });
      this.prev = $(this.dom).find('.prev');
      this.next = $(this.dom).find('.next');
      if (this.properties.active === 0) {
        this.prev.hide();
      }
      if (this.properties.active === this.properties.length - 1) {
        this.next.hide();
      }
      if (!this.properties.length) {
        $(this.dom).hide();
      }
      this.prev.click((function(_this) {
        return function() {
          return _this.set(_this.properties.active - 1);
        };
      })(this));
      this.next.click((function(_this) {
        return function() {
          return _this.set(_this.properties.active + 1);
        };
      })(this));
      this.select.change((function(_this) {
        return function() {
          var idx;
          idx = parseInt(_this.select.val()) - 1;
          console.log(idx, _this.properties.active);
          if (idx !== _this.properties.active) {
            return _this.set(idx);
          }
        };
      })(this));
      return this;
    };

    paging.prototype.set = function(page) {
      return this.event('switch', {
        page: page
      });
    };

    return paging;

  })(window.Control);

  window.Controls.pathbox = (function(_super) {
    __extends(pathbox, _super);

    function pathbox() {
      return pathbox.__super__.constructor.apply(this, arguments);
    }

    pathbox.prototype.createDom = function() {
      return "<div class=\"control container pathbox __child-container\">\n    <children>\n</div>";
    };

    pathbox.prototype.setupDom = function(dom) {
      pathbox.__super__.setupDom.call(this, dom);
      this.textbox = new Controls.textbox(this.ui, {
        style: this.properties.style,
        value: this.properties.value
      }).setupDom();
      this.button = new Controls.button(this.ui, {
        style: 'mini',
        icon: this.properties.directory ? 'folder-close' : 'file',
        text: ''
      }).setupDom();
      this.append(this.textbox);
      this.append(this.button);
      this.button.on_click = (function(_this) {
        return function() {
          return _this.event('start', {});
        };
      })(this);
      return this;
    };

    pathbox.prototype.detectUpdates = function() {
      return this.textbox.detectUpdates();
    };

    return pathbox;

  })(window.Control);

}).call(this);
