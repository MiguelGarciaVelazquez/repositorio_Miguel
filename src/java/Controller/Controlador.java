package Controller;

import Config.Conexion;
import Entidad.Usuarios;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Controlador {

    Conexion con = new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    //  jdbcTemplate= new jdbcTemplate (con.Conectar());
    ModelAndView mav = new ModelAndView();
    private Integer id;
    private String id_usu;
    List datos;

    @RequestMapping("index.htm")
    public ModelAndView Listar() {
        String sql = "select * from usuarios";
        datos = this.jdbcTemplate.queryForList(sql);
        // datos =this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("index");
        return mav;
    }

    @RequestMapping(value = "agregar.htm", method = RequestMethod.GET)
    public ModelAndView agregar() {
        mav.addObject("agregar");
        mav.setViewName("agregar");
        return mav;
    }

    @RequestMapping(value = "agregar.htm", method = RequestMethod.POST)
    public ModelAndView agregar(Usuarios u) {
        String sql = "insert into usuarios(id_usu,nombre,apellido) values(?,?,?) ";

        this.jdbcTemplate.update(sql, u.getId_usu(), u.getNombre(), u.getApellido());
        return new ModelAndView("redirect:/index.htm");
    }

    @RequestMapping(value = "editar.htm", method = RequestMethod.GET)
    public ModelAndView editar(HttpServletRequest request) {
        id = Integer.parseInt(request.getParameter("id"));
        String sql = "select * from usuarios where id_usu=" + id;
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("editar");
        return mav;
    }

    @RequestMapping(value = "editar.htm", method = RequestMethod.POST)
    public ModelAndView editar(Usuarios u) {
        String sql = "update usuarios set id_usu=?,nombre=?,apellido=? where id_usu=?";
        this.jdbcTemplate.update(sql, u.getId_usu(), u.getNombre(), u.getApellido(), u.getId_usu());
        return new ModelAndView("redirect:/index.htm");
    }

    @RequestMapping("delete.htm")
    public ModelAndView eliminar(HttpServletRequest request) {
        id = Integer.parseInt(request.getParameter("id"));
        String sql = "delete from usuarios where id_usu=" + id;
        this.jdbcTemplate.update(sql);
        return new ModelAndView("redirect:/index.htm");

        /*  @RequestMapping(value="editar.htm", method = RequestMethod.GET)
       public ModelAndView editar(HttpServletRequest request){
           String sql="select * from usuarios";
           List datos=this.jdbcTemplate.queryForList(sql);
           // datos =this.jdbcTemplate.queryForList(sql);
           mav.addObject("lista",datos);
           mav.setViewName("index");
           return mav;
    
       /*
           @RequestMapping("delete.htm")
       public void()M
           String sql="delete from usuarios where id_usu";
         this.jdbcTemplate.update(sql);
         return new ModelAndView("redirect:/index.htm");
     }
         */
    }

}
