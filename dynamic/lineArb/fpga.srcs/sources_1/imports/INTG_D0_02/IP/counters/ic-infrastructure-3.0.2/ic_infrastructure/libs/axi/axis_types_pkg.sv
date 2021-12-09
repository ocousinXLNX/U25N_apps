// -----------------------------------------------------------------------------
// (c) 2019 Copyright SolarFlare Communications, Inc
// -----------------------------------------------------------------------------

package axis_types_pkg;

class axis_data_c #(DATA_WIDTH=512, USER_WIDTH=1);
    typedef struct packed {
        logic last;
        logic [(DATA_WIDTH/8)-1:0] keep;
        logic [USER_WIDTH-1:0] user;
        logic [DATA_WIDTH-1:0] data;                
    } axis_data_t;
endclass

endpackage
