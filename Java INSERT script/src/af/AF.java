
package af;

import static af.AF.getRandomColor;
import static af.AF.getRandomInt;
import static af.AF.getRandomMarca;
import static af.AF.getRandomMaterial;
import static af.AF.getRandomTamaño;
import static af.AF.randomAlphaNumeric;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;

/**
 *
 * @author dequi
 */
public class AF {


    public static void main(String[] args) {
                
        HashMap<String, Compra> compras = new HashMap<>();
        
        for (int i = 0; i<50; i++) {
            Compra c = new Compra();
            c.setId(2020000 + i);
            c.setFecha(Integer.toString(getRandomInt(1, 28)) + "/" + Integer.toString(getRandomInt(1, 7)) + "/2020");
            c.setValor(getRandomInt(15000000, 25000000) + (getRandomInt(0, 99)/100));
            compras.put(Integer.toString(c.getId()), c);
            c.printInfo();
        }
        
        HashMap<String, Vicerrectoria> vicerrectorias = new HashMap<>();
        Vicerrectoria v_for = new Vicerrectoria();
        v_for.setId("FOR");
        v_for.setNombre("Vicerrectoría de Formación");
        v_for.setVice("María Claudia Rincón Mora");
        vicerrectorias.put(v_for.getId(), v_for);
        Vicerrectoria v_inv = new Vicerrectoria();
        v_inv.setId("INV");
        v_inv.setNombre("Vicerrectoría de Investigación");
        v_inv.setVice("Carlos Humberto Angarita Preciado");
        vicerrectorias.put(v_inv.getId(), v_inv);
        Vicerrectoria v_ext = new Vicerrectoria();
        v_ext.setId("EXT");
        v_ext.setNombre("Vicerrectoría de Extensión y Proyección Social");
        v_ext.setVice("Luis Augusto Moreno Boadas");
        vicerrectorias.put(v_ext.getId(), v_ext);       
        Vicerrectoria v_adm = new Vicerrectoria();
        v_adm.setId("ADM");
        v_adm.setNombre("Vicerrectoría de Administración y Financiera");
        v_adm.setVice("Luz Marina Trejos Montero");
        vicerrectorias.put(v_adm.getId(), v_adm);
        
        for (Vicerrectoria v: vicerrectorias.values()) {
                v.printInfo();
            }
        
        HashMap<String, Facultad> facultades = new HashMap<>();
        Facultad f_agr = new Facultad();
        f_agr.setId("AGR");
        f_agr.setNombre("Ciencias Agrarias");
        f_agr.setDecano("Néstor Mauricio Serna Rodríguez");
        facultades.put(f_agr.getId(), f_agr);
        Facultad f_jur = new Facultad();
        f_jur.setId("JUR");
        f_jur.setNombre("Ciencias Jurídicas y Sociales");
        f_jur.setDecano("Francisco Antonio Pedraza Vásquez");
        facultades.put(f_jur.getId(), f_jur);       
        Facultad f_eco = new Facultad();
        f_eco.setId("ECO");
        f_eco.setNombre("Ciencias Económicas, Administrativas y Contables");
        f_eco.setDecano("Mario Alberto Rodríguez Franco");
        facultades.put(f_eco.getId(), f_eco);       
        Facultad f_ing = new Facultad();
        f_ing.setId("ING");
        f_ing.setNombre("Ingeniería");
        f_ing.setDecano("María Luisa Pérez Cifuentes");
        facultades.put(f_ing.getId(), f_ing);  
        Facultad f_cie = new Facultad();
        f_cie.setId("CIE");
        f_cie.setNombre("Ciencias Básicas y de la Educación");
        f_cie.setDecano("Sandra Milena Piedrahita Buitrago");
        facultades.put(f_cie.getId(), f_cie); 
        
        for (Facultad f: facultades.values()) {
            f.printInfo();
        }
        
        HashMap<String, Programa> programas = new HashMap<>();
        Programa agr_vet = new Programa();
        agr_vet.setFacultad(f_agr);
        agr_vet.setId("VET");
        agr_vet.setNombre("Medicina Veterinaria");
        programas.put(agr_vet.getFacultad().getId() + agr_vet.getId(), agr_vet); 
        Programa agr_zoo = new Programa();
        agr_zoo.setFacultad(f_agr);
        agr_zoo.setId("ZOO");
        agr_zoo.setNombre("Zootecnia");
        programas.put(agr_zoo.getFacultad().getId() + agr_zoo.getId(), agr_zoo); 
        Programa agr_esp = new Programa();
        agr_esp.setFacultad(f_agr);
        agr_esp.setId("BAT");
        agr_esp.setNombre("Especialización en Bienestar Animal y Etología");
        programas.put(agr_esp.getFacultad().getId() + agr_esp.getId(), agr_esp); 
        Programa jur_der = new Programa();
        jur_der.setFacultad(f_jur);
        jur_der.setId("DER");
        jur_der.setNombre("Derecho");
        programas.put(jur_der.getFacultad().getId() + jur_der.getId(), jur_der); 
        Programa jur_esp = new Programa();
        jur_esp.setFacultad(f_jur);
        jur_esp.setId("LROT");
        jur_esp.setNombre("Especialización en Legislación Rural y Ordenamiento Territorial");
        programas.put(jur_esp.getFacultad().getId() + jur_esp.getId(), jur_esp); 
        Programa eco_con = new Programa();
        eco_con.setFacultad(f_eco);
        eco_con.setId("CON");
        eco_con.setNombre("Contaduría Pública");
        programas.put(eco_con.getFacultad().getId() + eco_con.getId(), eco_con); 
        Programa eco_adm = new Programa();
        eco_adm.setFacultad(f_eco);
        eco_adm.setId("AFS");
        eco_adm.setNombre("Administración Financiera y de Sistemas");
        programas.put(eco_adm.getFacultad().getId() + eco_adm.getId(), eco_adm); 
        Programa eco_sis = new Programa();
        eco_sis.setFacultad(f_eco);
        eco_sis.setId("SGI");
        eco_sis.setNombre("Especialización en Sistemas de Gestión Integrada HSEQ"); 
        programas.put(eco_sis.getFacultad().getId() + eco_sis.getId(), eco_sis); 
        Programa eco_agr = new Programa();
        eco_agr.setFacultad(f_eco);
        eco_agr.setId("EGA");
        eco_agr.setNombre("Especialización en Gestión de Agronegocios"); 
        programas.put(eco_agr.getFacultad().getId() + eco_agr.getId(), eco_agr); 
        Programa ing_ind = new Programa();
        ing_ind.setFacultad(f_ing);
        ing_ind.setId("IND");
        ing_ind.setNombre("Ingeniería Industrial"); 
        programas.put(ing_ind.getFacultad().getId() + ing_ind.getId(), ing_ind); 
        Programa ing_civ = new Programa();
        ing_civ.setFacultad(f_ing);
        ing_civ.setId("CIV");
        ing_civ.setNombre("Ingeniería Civil"); 
        programas.put(ing_civ.getFacultad().getId() + ing_civ.getId(), ing_civ);
        Programa ing_agr = new Programa();
        ing_agr.setFacultad(f_ing);
        ing_agr.setId("AGR");
        ing_agr.setNombre("Ingeniería Agroindustrial"); 
        programas.put(ing_agr.getFacultad().getId() + ing_agr.getId(), ing_agr);
        Programa ing_mec = new Programa();
        ing_mec.setFacultad(f_ing);
        ing_mec.setId("MEC");
        ing_mec.setNombre("Ingeniería Mecatrónica"); 
        programas.put(ing_mec.getFacultad().getId() + ing_mec.getId(), ing_mec);
        Programa ing_ali = new Programa();
        ing_ali.setFacultad(f_ing);
        ing_ali.setId("ALI");
        ing_ali.setNombre("Ingeniería de Alimentos"); 
        programas.put(ing_ali.getFacultad().getId() + ing_ali.getId(), ing_ali);
        Programa ing_esp = new Programa();
        ing_esp.setFacultad(f_ing);
        ing_esp.setId("SGI");
        ing_esp.setNombre("Especialización en Seguridad Industrial, Higiene y Gestión Ambiental"); 
        programas.put(ing_esp.getFacultad().getId() + ing_esp.getId(), ing_esp);
        Programa cie_lic = new Programa();
        cie_lic.setFacultad(f_cie);
        cie_lic.setId("LCNEA");
        cie_lic.setNombre("Licenciatura en Ciencias Naturales y Educación Ambiental");
        programas.put(cie_lic.getFacultad().getId() + cie_lic.getId(), cie_lic);
 
        for (Programa p: programas.values()) {
            p.printInfo();
        }        
        
        HashMap<String, Sede> sedes = new HashMap<>();
        Sede principal = new Sede();
        principal.setId(1);
        principal.setNombre("Sede Principal");
        sedes.put(Integer.toString(principal.getId()), principal);
        Sede teusaquillo = new Sede();
        teusaquillo.setId(2);
        teusaquillo.setNombre("Dependencia Teusaquillo");
        sedes.put(Integer.toString(teusaquillo.getId()), teusaquillo);
        Sede faca = new Sede();
        faca.setId(3);
        faca.setNombre("Dependencia Facatativá");
        sedes.put(Integer.toString(faca.getId()), faca);
        Sede tenjo = new Sede();
        tenjo.setId(4);
        tenjo.setNombre("CIDT Pinares de Tenjo");
        sedes.put(Integer.toString(tenjo.getId()), tenjo);

        for (Sede s: sedes.values()) {
            s.printInfo();
        }
        
        HashMap<String, Edificio> edificios = new HashMap<>();
        Edificio ed_a = new Edificio();
        ed_a.setId(1);
        ed_a.setSede(principal);
        ed_a.setNombre("Bloque A");
        edificios.put(Integer.toString(ed_a.getId()), ed_a);
        Edificio ed_b = new Edificio();
        ed_b.setId(2);
        ed_b.setSede(principal);
        ed_b.setNombre("Bloque B");
        edificios.put(Integer.toString(ed_b.getId()), ed_b);
        Edificio ed_c = new Edificio();
        ed_c.setId(3);
        ed_c.setSede(principal);
        ed_c.setNombre("Bloque C");
        edificios.put(Integer.toString(ed_c.getId()), ed_c);
        Edificio ed_d = new Edificio();
        ed_d.setId(4);
        ed_d.setSede(principal);
        ed_d.setNombre("Bloque D");
        edificios.put(Integer.toString(ed_d.getId()), ed_d);
        Edificio ed_e = new Edificio();
        ed_e.setId(5);
        ed_e.setSede(principal);
        ed_e.setNombre("Bloque E");
        edificios.put(Integer.toString(ed_e.getId()), ed_e);
        Edificio ed_f = new Edificio();
        ed_f.setId(6);
        ed_f.setSede(principal);
        ed_f.setNombre("Bloque F");
        edificios.put(Integer.toString(ed_f.getId()), ed_f);
        Edificio ed_g = new Edificio();
        ed_g.setId(7);
        ed_g.setSede(principal);
        ed_g.setNombre("Bloque G");
        edificios.put(Integer.toString(ed_g.getId()), ed_g);
        Edificio ed_h = new Edificio();
        ed_h.setId(8);
        ed_h.setSede(principal);
        ed_h.setNombre("Bloque H");
        edificios.put(Integer.toString(ed_h.getId()), ed_h);
        Edificio ed_i = new Edificio();
        ed_i.setId(9);
        ed_i.setSede(principal);
        ed_i.setNombre("Bloque I");
        edificios.put(Integer.toString(ed_i.getId()), ed_i);
        Edificio ed_j = new Edificio();
        ed_j.setId(10);
        ed_j.setSede(principal);
        ed_j.setNombre("Bloque J");
        edificios.put(Integer.toString(ed_j.getId()), ed_j);
        Edificio ed_ts1 = new Edificio();
        ed_ts1.setId(11);
        ed_ts1.setSede(teusaquillo);
        ed_ts1.setNombre("Bloque Principal");
        edificios.put(Integer.toString(ed_ts1.getId()), ed_ts1);
        Edificio ed_ts2 = new Edificio();
        ed_ts2.setId(12);
        ed_ts2.setSede(teusaquillo);
        ed_ts2.setNombre("Bloque Carlos Fernando Paredes Millán");
        edificios.put(Integer.toString(ed_ts2.getId()), ed_ts2);
        Edificio ed_tj1 = new Edificio();
        ed_tj1.setId(13);
        ed_tj1.setSede(tenjo);
        ed_tj1.setNombre("Bloque Principal");
        edificios.put(Integer.toString(ed_tj1.getId()), ed_tj1);
        Edificio ed_tj2 = new Edificio();
        ed_tj2.setId(14);
        ed_tj2.setSede(tenjo);
        ed_tj2.setNombre("Bloque Laboratorios");
        edificios.put(Integer.toString(ed_tj2.getId()), ed_tj2);
        Edificio ed_tj3 = new Edificio();
        ed_tj3.setId(15);
        ed_tj3.setSede(tenjo);
        ed_tj3.setNombre("Bloque Operarios");
        edificios.put(Integer.toString(ed_tj3.getId()), ed_tj3);
        Edificio ed_tj4 = new Edificio();
        ed_tj4.setId(16);
        ed_tj4.setSede(tenjo);
        ed_tj4.setNombre("Bloque Administrativo");
        edificios.put(Integer.toString(ed_tj4.getId()), ed_tj4);
        Edificio ed_f1 = new Edificio();
        ed_f1.setId(17);
        ed_f1.setSede(faca);
        ed_f1.setNombre("Bloque Principal");
        edificios.put(Integer.toString(ed_f1.getId()), ed_f1);
        Edificio ed_f2 = new Edificio();
        ed_f2.setId(18);
        ed_f2.setSede(faca);
        ed_f2.setNombre("Bloque Carrera 15");
        edificios.put(Integer.toString(ed_f2.getId()), ed_f2);
        
        for (Edificio e: edificios.values()) {
            e.printInfo();
        }
        
        
        HashMap<String, Departamento> departamentos = new HashMap<>();
        Departamento d1 = new Departamento();
        d1.setId(1);
        d1.setNombre("Investigación Aplicada");
        d1.setDirector("Pablo Andrés Rodríguez Peña");
        d1.setVicerrectoria(v_inv);
        departamentos.put(d1.getVicerrectoria().getId() + Integer.toString(d1.getId()), d1);
        Departamento d2 = new Departamento();
        d2.setId(2);
        d2.setNombre("Investigación Formativa");
        d2.setDirector("Adriana Martínez Méndez");
        d2.setVicerrectoria(v_inv);
        departamentos.put(d2.getVicerrectoria().getId() + Integer.toString(d2.getId()), d2);
        Departamento d3 = new Departamento();
        d3.setId(3);
        d3.setNombre("Educación para el Trabajo y el Desarrollo Humano");
        d3.setDirector("Samuel Cipriano Moreno Rodríguez");
        d3.setVicerrectoria(v_ext);
        departamentos.put(d3.getVicerrectoria().getId() + Integer.toString(d3.getId()), d3);
        Departamento d4 = new Departamento();
        d4.setId(4);
        d4.setNombre("Aseguramiento de la Calidad");
        d4.setDirector("Mario Andrés Canadas Buitrago");
        d4.setVicerrectoria(v_for);
        departamentos.put(d4.getVicerrectoria().getId() + Integer.toString(d4.getId()), d4);
        Departamento d5 = new Departamento();
        d5.setId(5);
        d5.setNombre("Proyectos Educativos en Contextos Rurales");
        d5.setDirector("Sandra Patricia Lara Martínez");
        d5.setVicerrectoria(v_ext);
        departamentos.put(d5.getVicerrectoria().getId() + Integer.toString(d5.getId()), d5);
        Departamento d6 = new Departamento();
        d6.setId(6);
        d6.setNombre("Contabilidad y Finanzas");
        d6.setDirector("Carlos Alberto Bernal Tiquiza");
        d6.setVicerrectoria(v_adm);
        departamentos.put(d6.getVicerrectoria().getId() + Integer.toString(d6.getId()), d6);
        Departamento d7 = new Departamento();
        d7.setId(7);
        d7.setNombre("Gestión Humana y Desarrollo Organizacional");
        d7.setDirector("Maria Alejandra Pinzón Ramos");
        d7.setVicerrectoria(v_adm);
        departamentos.put(d7.getVicerrectoria().getId() + Integer.toString(d7.getId()), d7);
        Departamento d8 = new Departamento();
        d8.setId(8);
        d8.setNombre("Logística y Servicios Administrativos");
        d8.setDirector("Wilson Andrés Montaño Cárdenas");
        d8.setVicerrectoria(v_adm);
        departamentos.put(d8.getVicerrectoria().getId() + Integer.toString(d8.getId()), d8);
        Departamento d9 = new Departamento();
        d9.setId(9);
        d9.setNombre("Sistemas y Tecnología");
        d9.setDirector("Daniel Humberto Díaz Calero");
        d9.setVicerrectoria(v_adm);
        departamentos.put(d9.getVicerrectoria().getId() + Integer.toString(d9.getId()), d9);
        Departamento d10 = new Departamento();
        d10.setId(10);
        d10.setNombre("Administración Dependencia Facatativá");
        d10.setDirector("Beatriz Gaitán Oviedo");
        d10.setVicerrectoria(v_adm);
        departamentos.put(d10.getVicerrectoria().getId() + Integer.toString(d10.getId()), d10);
        Departamento d11 = new Departamento();
        d11.setId(11);
        d11.setNombre("Administración Dependencia Teusaquillo");
        d11.setDirector("María Alejandra Azuero López");
        d11.setVicerrectoria(v_adm);
        departamentos.put(d11.getVicerrectoria().getId() + Integer.toString(d11.getId()), d11);
        Departamento d12 = new Departamento();
        d12.setId(12);
        d12.setNombre("Investigación en Ingeniería");
        d12.setDirector("Gloria Mercedes Cardona Sotelo");
        d12.setFacultad(f_ing);
        departamentos.put(d12.getFacultad().getId() + Integer.toString(d12.getId()), d12);
        Departamento d13 = new Departamento();
        d13.setId(13);
        d13.setNombre("Investigación en Ciencias Agrarias");
        d13.setDirector("Manuel Carlos Medina Lopera");
        d13.setFacultad(f_agr);
        departamentos.put(d13.getFacultad().getId() + Integer.toString(d13.getId()), d13);
        Departamento d14 = new Departamento();
        d14.setId(14);
        d14.setNombre("Idiomas");
        d14.setDirector("Roger Miller Campbell");
        d14.setFacultad(f_cie);
        departamentos.put(d14.getFacultad().getId() + Integer.toString(d14.getId()), d14);
        Departamento d15 = new Departamento();
        d15.setId(15);
        d15.setNombre("Humanidades");
        d15.setDirector("Martín Alejandro Corrales Parra");
        d15.setFacultad(f_cie);
        departamentos.put(d15.getFacultad().getId() + Integer.toString(d15.getId()), d15);
        Departamento d16 = new Departamento();
        d16.setId(16);
        d16.setNombre("Ciencias Básicas");
        d16.setDirector("Myriam Adriana Rodríguez López");
        d16.setFacultad(f_cie);
        departamentos.put(d16.getFacultad().getId() + Integer.toString(d16.getId()), d16);
        Departamento d17 = new Departamento();
        d17.setId(17);
        d17.setNombre("Educación Virtual");
        d17.setDirector("Carlos Arturo Durán Porras");
        d17.setVicerrectoria(v_for);
        departamentos.put(d17.getVicerrectoria().getId() + Integer.toString(d17.getId()), d17);
        Departamento d18 = new Departamento();
        d18.setId(18);
        d18.setNombre("Bienestar Universitario");
        d18.setDirector("Eduardo Fernández Wilches");
        d18.setVicerrectoria(v_ext);
        departamentos.put(d18.getVicerrectoria().getId() + Integer.toString(d18.getId()), d18);
        Departamento d19 = new Departamento();
        d19.setId(19);
        d19.setNombre("Formación Académica");
        d19.setDirector("Carlos Andrés Preciado Sosa");
        d19.setVicerrectoria(v_for);
        departamentos.put(d19.getVicerrectoria().getId() + Integer.toString(d19.getId()), d19);
        Departamento d20 = new Departamento();
        d20.setId(20);
        d20.setNombre("Secretaría General");
        d20.setDirector("Maria Helena Cadavid Quintana");
        d20.setVicerrectoria(v_adm);
        departamentos.put(d20.getVicerrectoria().getId() + Integer.toString(d20.getId()), d20);
        Departamento d21 = new Departamento();
        d21.setId(21);
        d21.setNombre("Planeación");
        d21.setDirector("David Hernando Torres Piraquive");
        d21.setVicerrectoria(v_adm);
        departamentos.put(d21.getVicerrectoria().getId() + Integer.toString(d21.getId()), d21);
        Departamento d22 = new Departamento();
        d22.setId(22);
        d22.setNombre("Mercadeo");
        d22.setDirector("Johanna Vanessa Duarte Jiménez");
        d22.setVicerrectoria(v_adm);
        departamentos.put(d22.getVicerrectoria().getId() + Integer.toString(d22.getId()), d22);
        Departamento d23 = new Departamento();
        d23.setId(23);
        d23.setNombre("Investigación en Ciencias Básicas");
        d23.setDirector("Diego Alonso Mancilla Peña");
        d23.setFacultad(f_cie);
        departamentos.put(d23.getFacultad().getId() + Integer.toString(d23.getId()), d23);
 
        
        for (Departamento d: departamentos.values()) {
            if (d.getFacultad() == null) {
                d.printInfo_v();
            }
            if (d.getVicerrectoria() == null) {
                d.printInfo_f();
            }
        }   

        HashMap<String, Area> areas = new HashMap<>();
        Area a1 = new Area(1, "Sección de Bibliotecas", d19);
        areas.put(Integer.toString(a1.getId()), a1);
        Area a2 = new Area(2, "Registro y Control", d19);      
        areas.put(Integer.toString(a2.getId()), a2);
        Area a3 = new Area(3, "Estudios Ambientales", d19);
        areas.put(Integer.toString(a3.getId()), a3);
        Area a4 = new Area(4, "Emprendimiento", d19);  
        areas.put(Integer.toString(a4.getId()), a4);
        Area a5 = new Area(5, "Acreditación", d4); 
        areas.put(Integer.toString(a5.getId()), a5);
        Area a6 = new Area(6, "Registros Calificados", d4);  
        areas.put(Integer.toString(a6.getId()), a6);
        Area a7 = new Area(7, "Autoevaluación", d4);
        areas.put(Integer.toString(a7.getId()), a7);
        Area a8 = new Area(8, "Divulgación Científica", d2);   
        areas.put(Integer.toString(a8.getId()), a8);
        Area a9 = new Area(9, "Ética y Bioética", d1);  
        areas.put(Integer.toString(a9.getId()), a9);
        Area a10 = new Area(10, "Programa Sembrar Paz", d4);
        areas.put(Integer.toString(a10.getId()), a10);
        Area a11 = new Area(11, "Articulación con la Educación Media", d5);
        areas.put(Integer.toString(a11.getId()), a11);
        Area a12 = new Area(12, "Educación Permanente", d5);
        areas.put(Integer.toString(a12.getId()), a12);
        Area a13 = new Area(13, "Archivo y Gestión Documental", d20); 
        areas.put(Integer.toString(a13.getId()), a13);
        Area a14 = new Area(14, "Planificación Estratégica", d21);
        areas.put(Integer.toString(a14.getId()), a14);
        Area a15 = new Area(15, "Sistemas Integrados de Gestión", d21);
        areas.put(Integer.toString(a15.getId()), a15);
        Area a16 = new Area(16, "Planeación Presupuestal", d21); 
        areas.put(Integer.toString(a16.getId()), a16);
        Area a17 = new Area(17, "Gestión de la Información Institutucional", d21);
        areas.put(Integer.toString(a17.getId()), a17);
        Area a18 = new Area(18, "Comunicaciones", d22); 
        areas.put(Integer.toString(a18.getId()), a18);
        Area a19 = new Area(19, "Investigación de Mercados", d22); 
        areas.put(Integer.toString(a19.getId()), a19);
        Area a20 = new Area(20, "Permanencia Estudiantil", d22);
        areas.put(Integer.toString(a20.getId()), a20);
        Area a21 = new Area(21, "Innovación Educativa", d17);
        areas.put(Integer.toString(a21.getId()), a21);
        Area a22 = new Area(22, "Ambientes Virtuales de Aprendizaje", d17);
        areas.put(Integer.toString(a22.getId()), a22);
        Area a23 = new Area(23, "Desarrollo de Programas Virtuales", d17);
        areas.put(Integer.toString(a23.getId()), a23);
        Area a24 = new Area(24, "Acompañamiento Estudiantil", d18);
        areas.put(Integer.toString(a24.getId()), a24);
        Area a25 = new Area(25, "Arte y Cultura", d18);
        areas.put(Integer.toString(a25.getId()), a25);
        Area a26 = new Area(26, "Actividad Física y Deporte", d18);
        areas.put(Integer.toString(a26.getId()), a26);
        Area a27 = new Area(27, "Medicina Estudiantil", d18);
        areas.put(Integer.toString(a27.getId()), a27);
        Area a28 = new Area(28, "Odontología", d18);
        areas.put(Integer.toString(a28.getId()), a28);
        Area a29 = new Area(29, "Psicología Clínica", d18);
        areas.put(Integer.toString(a29.getId()), a29);
        Area a30 = new Area(30, "Integración con el Egresado", d18);
        areas.put(Integer.toString(a30.getId()), a30);
        Area a31 = new Area(31, "Seguridad y Salud en el Trabajo", d7);
        areas.put(Integer.toString(a31.getId()), a31);
        Area a32 = new Area(32, "Capacitación y Desarrollo de Personal", d7);
        areas.put(Integer.toString(a32.getId()), a32);
        Area a33 = new Area(33, "Administración de Personal", d7);
        areas.put(Integer.toString(a33.getId()), a33);
        Area a34 = new Area(34, "Reclutamiento y Selección de Personal", d7);
        areas.put(Integer.toString(a34.getId()), a34);
        Area a35 = new Area(35, "Compras y Almacén", d8);
        areas.put(Integer.toString(a35.getId()), a35);
        Area a36 = new Area(36, "Infraestructura", d8);
        areas.put(Integer.toString(a36.getId()), a36);
        Area a37 = new Area(37, "Servicios Generales y Transportes", d8);
        areas.put(Integer.toString(a37.getId()), a37);
        Area a38 = new Area(38, "Ayudas Educativas", d9);
        areas.put(Integer.toString(a38.getId()), a38);
        Area a39 = new Area(39, "Soporte Técnico y Telecomunicaciones", d9);
        areas.put(Integer.toString(a39.getId()), a39);
        Area a40 = new Area(40, "Soporte Sistema Institucional", d9);
        areas.put(Integer.toString(a40.getId()), a40);
        Area a41 = new Area(41, "Jefatura de Ingeniería Civil", d10);
        areas.put(Integer.toString(a41.getId()), a41);
        Area a42 = new Area(42, "Jefatura de Derecho", d10);
        areas.put(Integer.toString(a42.getId()), a42);
        Area a43 = new Area(43, "Jefatura de Ingeniería Mecatrónica", d10);
        areas.put(Integer.toString(a43.getId()), a43);
        Area a44 = new Area(44, "Servicios Administrativos", d10);
        areas.put(Integer.toString(a44.getId()), a44);
        Area a45 = new Area(45, "Servicios del Medio Universitario", d10);
        areas.put(Integer.toString(a45.getId()), a45);
        Area a46 = new Area(46, "Servicios Administrativos", d11);
        areas.put(Integer.toString(a46.getId()), a46);
        Area a47 = new Area(47, "Servicios del Medio Universitario", d11);
        areas.put(Integer.toString(a47.getId()), a47);
        Area a48 = new Area(48, "Jefatura de Derecho", d11);
        areas.put(Integer.toString(a48.getId()), a48);
        Area a49 = new Area(49, "Jefatura del CIDT Pinares de Tenjo", f_agr);
        areas.put(Integer.toString(a49.getId()), a49);
        Area a50 = new Area(50, "Consultorio Jurídico", f_jur);
        areas.put(Integer.toString(a50.getId()), a50);
        Area a51 = new Area(51, "Centros de Conciliación", f_jur);
        areas.put(Integer.toString(a51.getId()), a51);
        Area a52 = new Area(52, "Consultorio Contable", f_eco);
        areas.put(Integer.toString(a52.getId()), a52);
        Area a53 = new Area(53, "Sección de Laboratorios de Ingeniería", f_ing);
        areas.put(Integer.toString(a53.getId()), a53);
        Area a54 = new Area(54, "Sección de Laboratorios de Ciencias Agrarias", f_agr);
        areas.put(Integer.toString(a54.getId()), a54);
        Area a55 = new Area(55, "Sección de Laboratorios de Ciencias Básicas", f_cie);
        areas.put(Integer.toString(a55.getId()), a55);
        Area a56 = new Area(56, "Escuela de Formación y Perfeccionamiento Docente", f_cie);
        areas.put(Integer.toString(a56.getId()), a56);
        
        for (Area a: areas.values()) {
            if (a.getFacultad() != null) {
                a.printInfo_f();
            }
            if (a.getDepartamento() != null) {
                a.printInfo_d();
            }
        }   
        
        HashMap<String, Funcionario> funcionarios = new HashMap<>();
        int idSub = 0;
        int idAsis = 0;
        for (int i = 1; i<57; i++) {
            Funcionario f = new Funcionario(1018007000 + i, getRandomName(getRandomInt(1, 3)), 
                                            Integer.toString(getRandomInt(1, 29)) + "/" 
                                            + Integer.toString(getRandomInt(1, 8)) 
                                            + "/2020", areas.get(Integer.toString(i)));
            f.printInfo_j();
            funcionarios.put(Integer.toString(f.getId()), f);
            
            if (i == 35) {
                Funcionario a_inv_1 = new Funcionario(1019004001, "Aura Milena Rodríguez Díaz", "02/02/2020", f, a35, "INV");
                funcionarios.put(Integer.toString(a_inv_1.getId()), a_inv_1);
                a_inv_1.printInfo_aux();
                Funcionario a_inv_2 = new Funcionario(1019004002, "Yeison Snader Martínez Soto", "04/03/2020", f, a35, "INV");
                funcionarios.put(Integer.toString(a_inv_2.getId()), a_inv_2);
                a_inv_2.printInfo_aux();
                Funcionario a_inv_3 = new Funcionario(1019004003, "Diana Marjorie Pineda Vanegas", "05/04/2020", f, a35, "INV");
                funcionarios.put(Integer.toString(a_inv_3.getId()), a_inv_3);
                a_inv_3.printInfo_aux();
            }
            
            if (i == 37) {
                Funcionario a_man_1 = new Funcionario(1019004004, getRandomName(getRandomInt(1, 3)), "03/03/2020", f, a37, "MAN");
                funcionarios.put(Integer.toString(a_man_1.getId()), a_man_1);
                a_man_1.printInfo_aux();
                Funcionario a_man_2 = new Funcionario(1019004005, getRandomName(getRandomInt(1, 3)), "01/06/2020", f, a37, "MAN");
                funcionarios.put(Integer.toString(a_man_2.getId()), a_man_2);
                a_man_2.printInfo_aux();
                Funcionario a_man_3 = new Funcionario(1019004006, getRandomName(getRandomInt(1, 3)), "05/07/2020", f, a37, "MAN");
                funcionarios.put(Integer.toString(a_man_3.getId()), a_man_3);
                a_man_3.printInfo_aux();
            }
            
            if (i == 54) {
                Funcionario a_lab_1 = new Funcionario(1019004007, getRandomName(getRandomInt(1, 3)), 
                                            Integer.toString(getRandomInt(1, 29)) + "/" 
                                            + Integer.toString(getRandomInt(1, 8)) 
                                            + "/2020", f, a54, "LAB");
                a_lab_1.printInfo_aux();
                funcionarios.put(Integer.toString(a_lab_1.getId()), a_lab_1);
                Funcionario a_lab_2 = new Funcionario(1019004008, getRandomName(getRandomInt(1, 3)), 
                                            Integer.toString(getRandomInt(1, 29)) + "/" 
                                            + Integer.toString(getRandomInt(1, 8)) 
                                            + "/2020", f, a54, "LAB");
                a_lab_2.printInfo_aux();
                funcionarios.put(Integer.toString(a_lab_2.getId()), a_lab_2);
                Funcionario a_lab_3 = new Funcionario(1019004009, getRandomName(getRandomInt(1, 3)), 
                                            Integer.toString(getRandomInt(1, 29)) + "/" 
                                            + Integer.toString(getRandomInt(1, 8)) 
                                            + "/2020", f, a54, "LAB");
                a_lab_3.printInfo_aux();
                funcionarios.put(Integer.toString(a_lab_3.getId()), a_lab_3);
                Funcionario a_lab_4 = new Funcionario(1019004010, getRandomName(getRandomInt(1, 3)), 
                                            Integer.toString(getRandomInt(1, 29)) + "/" 
                                            + Integer.toString(getRandomInt(1, 8)) 
                                            + "/2020", f, a54, "LAB");
                a_lab_4.printInfo_aux();
                funcionarios.put(Integer.toString(a_lab_4.getId()), a_lab_4);         
                Funcionario a_lab_5 = new Funcionario(1019004011, getRandomName(getRandomInt(1, 3)), 
                                            Integer.toString(getRandomInt(1, 29)) + "/" 
                                            + Integer.toString(getRandomInt(1, 8)) 
                                            + "/2020", f, a54, "LAB");
                a_lab_5.printInfo_aux();
                funcionarios.put(Integer.toString(a_lab_5.getId()), a_lab_5);       
            }
             if (i == 55) {
                Funcionario a_lab_6 = new Funcionario(1019004012, getRandomName(getRandomInt(1, 3)), 
                                            Integer.toString(getRandomInt(1, 29)) + "/" 
                                            + Integer.toString(getRandomInt(1, 8)) 
                                            + "/2020", f, a55, "LAB");
                a_lab_6.printInfo_aux();
                funcionarios.put(Integer.toString(a_lab_6.getId()), a_lab_6);
                Funcionario a_lab_7 = new Funcionario(1019004013, getRandomName(getRandomInt(1, 3)), 
                                            Integer.toString(getRandomInt(1, 29)) + "/" 
                                            + Integer.toString(getRandomInt(1, 8)) 
                                            + "/2020", f, a55, "LAB");
                a_lab_7.printInfo_aux();
                funcionarios.put(Integer.toString(a_lab_7.getId()), a_lab_7);
                Funcionario a_lab_8 = new Funcionario(1019004014, getRandomName(getRandomInt(1, 3)), 
                                            Integer.toString(getRandomInt(1, 29)) + "/" 
                                            + Integer.toString(getRandomInt(1, 8)) 
                                            + "/2020", f, a55, "LAB");
                a_lab_8.printInfo_aux();
                funcionarios.put(Integer.toString(a_lab_8.getId()), a_lab_8);
            }
            if (i == 53) {
                Funcionario a_lab_9 = new Funcionario(1019004015, getRandomName(getRandomInt(1, 3)), 
                                            Integer.toString(getRandomInt(1, 29)) + "/" 
                                            + Integer.toString(getRandomInt(1, 8)) 
                                            + "/2020", f, a53, "LAB");
                a_lab_9.printInfo_aux();
                funcionarios.put(Integer.toString(a_lab_9.getId()), a_lab_9);
                Funcionario a_lab_10 = new Funcionario(1019004016, getRandomName(getRandomInt(1, 3)), 
                                            Integer.toString(getRandomInt(1, 29)) + "/" 
                                            + Integer.toString(getRandomInt(1, 8)) 
                                            + "/2020", f, a53, "LAB");
                a_lab_10.printInfo_aux();
                funcionarios.put(Integer.toString(a_lab_10.getId()), a_lab_10);
                Funcionario a_lab_11 = new Funcionario(1019004017, getRandomName(getRandomInt(1, 3)), 
                                            Integer.toString(getRandomInt(1, 29)) + "/" 
                                            + Integer.toString(getRandomInt(1, 8)) 
                                            + "/2020", f, a53, "LAB");
                a_lab_11.printInfo_aux();
                funcionarios.put(Integer.toString(a_lab_11.getId()), a_lab_11);
                Funcionario a_lab_12 = new Funcionario(1019004018, getRandomName(getRandomInt(1, 3)), 
                                            Integer.toString(getRandomInt(1, 29)) + "/" 
                                            + Integer.toString(getRandomInt(1, 8)) 
                                            + "/2020", f, a53, "LAB");
                a_lab_12.printInfo_aux();
                funcionarios.put(Integer.toString(a_lab_12.getId()), a_lab_12);         
                Funcionario a_lab_13 = new Funcionario(1019004019, getRandomName(getRandomInt(1, 3)), 
                                            Integer.toString(getRandomInt(1, 29)) + "/" 
                                            + Integer.toString(getRandomInt(1, 8)) 
                                            + "/2020", f, a53, "LAB");
                a_lab_13.printInfo_aux();
                funcionarios.put(Integer.toString(a_lab_13.getId()), a_lab_13);  
                Funcionario a_lab_14 = new Funcionario(1019004020, getRandomName(getRandomInt(1, 3)), 
                                            Integer.toString(getRandomInt(1, 29)) + "/" 
                                            + Integer.toString(getRandomInt(1, 8)) 
                                            + "/2020", f, a53, "LAB");
                a_lab_14.printInfo_aux();
                funcionarios.put(Integer.toString(a_lab_14.getId()), a_lab_14);
                Funcionario a_lab_15 = new Funcionario(1019004021, getRandomName(getRandomInt(1, 3)), 
                                            Integer.toString(getRandomInt(1, 29)) + "/" 
                                            + Integer.toString(getRandomInt(1, 8)) 
                                            + "/2020", f, a53, "LAB");
                a_lab_15.printInfo_aux();
                funcionarios.put(Integer.toString(a_lab_15.getId()), a_lab_15);
                Funcionario a_lab_16 = new Funcionario(1019004022, getRandomName(getRandomInt(1, 3)), 
                                            Integer.toString(getRandomInt(1, 29)) + "/" 
                                            + Integer.toString(getRandomInt(1, 8)) 
                                            + "/2020", f, a53, "LAB");
                a_lab_16.printInfo_aux();
                funcionarios.put(Integer.toString(a_lab_16.getId()), a_lab_16);
                Funcionario a_lab_17 = new Funcionario(1019004023, getRandomName(getRandomInt(1, 3)), 
                                            Integer.toString(getRandomInt(1, 29)) + "/" 
                                            + Integer.toString(getRandomInt(1, 8)) 
                                            + "/2020", f, a53, "LAB");
                a_lab_17.printInfo_aux();
                funcionarios.put(Integer.toString(a_lab_17.getId()), a_lab_17);         
                Funcionario a_lab_18 = new Funcionario(1019004024, getRandomName(getRandomInt(1, 3)), 
                                            Integer.toString(getRandomInt(1, 29)) + "/" 
                                            + Integer.toString(getRandomInt(1, 8)) 
                                            + "/2020", f, a53, "LAB");
                a_lab_18.printInfo_aux();
                funcionarios.put(Integer.toString(a_lab_18.getId()), a_lab_18);  
                Funcionario a_lab_19 = new Funcionario(1019004025, getRandomName(getRandomInt(1, 3)), 
                                            Integer.toString(getRandomInt(1, 29)) + "/" 
                                            + Integer.toString(getRandomInt(1, 8)) 
                                            + "/2020", f, a53, "LAB");
                a_lab_19.printInfo_aux();
                funcionarios.put(Integer.toString(a_lab_19.getId()), a_lab_19);  
                Funcionario a_lab_20 = new Funcionario(1019004026, getRandomName(getRandomInt(1, 3)), 
                                            Integer.toString(getRandomInt(1, 29)) + "/" 
                                            + Integer.toString(getRandomInt(1, 8)) 
                                            + "/2020", f, a53, "LAB");
                a_lab_20.printInfo_aux();
                funcionarios.put(Integer.toString(a_lab_20.getId()), a_lab_20);                
            }

            for (int j = 1; j<=2; j++) {
                Funcionario fc = new Funcionario(1018006000 + idSub, getRandomName(getRandomInt(1, 3)),
                                            f, Integer.toString(getRandomInt(1, 29)) + "/" 
                                            + Integer.toString(getRandomInt(1, 8)) 
                                            + "/2020", areas.get(Integer.toString(i)));
                fc.printInfo_c_a();
                funcionarios.put(Integer.toString(fc.getId()), fc);
                
                idSub ++;
                
                for (int k = 1; k<=3; k++) {
                    Funcionario fa = new Funcionario(1018005000 + idAsis, getRandomName(getRandomInt(1, 3)),
                                            fc, Integer.toString(getRandomInt(1, 29)) + "/" 
                                            + Integer.toString(getRandomInt(1, 8)) 
                                            + "/2020", k%2, areas.get(Integer.toString(i)));
                    fa.printInfo_c_a();
                    funcionarios.put(Integer.toString(fa.getId()), fa);
                    
                    idAsis ++;
                }
            }
        }      
        Iterator it = programas.entrySet().iterator();
        HashMap<String, Funcionario> docentes = new HashMap<>();
        int id_docente = 1017005000;
        while (it.hasNext()) {    
            Map.Entry pair = (Map.Entry)it.next();
            int n = getRandomInt(5, 12);
            for (int j = 3; j <= n; j++) {
                Funcionario d = new Funcionario(id_docente, getRandomName(getRandomInt(1, 3)), 
                                                Integer.toString(getRandomInt(1, 29)) + "/" 
                                                + Integer.toString(getRandomInt(1, 8)) 
                                                + "/2020", (id_docente+j)%3, (Programa) pair.getValue());
                funcionarios.put(Integer.toString(d.getId()), d);
                d.printInfo_d();
                id_docente ++;
            }
            // it.remove(); 
        }
        
        HashMap<String, Locacion> salones = new HashMap<>();
        HashMap<String, Locacion> auditorios = new HashMap<>();

        Iterator it2 = edificios.entrySet().iterator();
        int m = 0;
        while (it2.hasNext()) {    
            Map.Entry pair = (Map.Entry)it2.next();
            int n = getRandomInt(10, 49);
            int k = 0;
            for (int j = 1; j <= n; j++) {
                Locacion s = new Locacion((j*10)-(9*k), (Edificio) pair.getValue(), "Salón " 
                                          + ((Edificio) pair.getValue()).getNombre().charAt(7)
                                          + Integer.toString((j*10)-(9*k)), 0);
                salones.put(Integer.toString(((Edificio) pair.getValue()).getId()) + Integer.toString(s.getId()), s);
                s.printInfo_s();
                k++;
            }
            if (m%2 == 0) {
                Locacion aud = new Locacion(((n+1)*10)-(9*k), (Edificio) pair.getValue(), "Auditorio " + 
                                            getRandomName(getRandomInt(1, 3)) , 1);
                auditorios.put(Integer.toString(aud.getId()), aud);
                aud.printInfo_aud();
            }
            m++;
            // it2.remove(); 
        }
        Object[] edificiosKeys = edificios.keySet().toArray();
        HashMap<String, Locacion> oficinas = new HashMap<>();
        for (int i = 1; i<57; i++) {
            int n = getRandomInt(1, 3);
            Object randomEdificio = edificiosKeys[new Random().nextInt(edificiosKeys.length)];
            for (int j = 1; j <= n; j++) {
                Edificio ed = edificios.get(randomEdificio);
                Locacion o = new Locacion((i * 1000) + j, ed, 
                                          "Oficina " + ed.getNombre().charAt(7)
                                                 + Integer.toString((i * 1000) + j), areas.get(Integer.toString(i)));
                oficinas.put(Integer.toString(o.getId()), o);
                o.printInfo_o();
            }
        }
        Locacion l1 = new Locacion(1, ed_e, "Química", funcionarios.get("1019004012"), "IEC-ISO 17025");
        l1.printInfo_l();
        Locacion l2 = new Locacion(2, ed_e, "Ciencias Biológicas", funcionarios.get("1019004013"), "IEC-ISO 15189");
        l2.printInfo_l();
        Locacion l3 = new Locacion(3, ed_e, "Física", funcionarios.get("1019004014"), "IEC-ISO 17025");
        l3.printInfo_l();
        
        Locacion l4 = new Locacion(4, ed_e, "Fitoquímica", funcionarios.get("1019004007"), "IEC-ISO 17025");
        l4.printInfo_l();
        Locacion l5 = new Locacion(5, ed_e, "Instrumentación Analítica", funcionarios.get("1019004008"), "IEC-ISO 15189");
        l5.printInfo_l();
        Locacion l6 = new Locacion(6, ed_e, "Investigación y Desarrollo Metrológico", funcionarios.get("1019004009"), "IEC-ISO 17025");
        l6.printInfo_l();
        Locacion l7 = new Locacion(7, ed_e, "Investigación, Calidad y Análisis", funcionarios.get("1019004010"), "IEC-ISO 15189");
        l7.printInfo_l();
        Locacion l8 = new Locacion(8, ed_e, "Vitrogen", funcionarios.get("1019004011"), "En Proceso");
        
        Locacion l9 = new Locacion(9, ed_e, "Biocombustibles", funcionarios.get("1019004015"), "En Proceso");
        l9.printInfo_l();
        Locacion l10 = new Locacion(1, ed_i, "Bioensayos y Fuentes de Alimentación No Convencionales", funcionarios.get("1019004016"), "En Proceso");
        l10.printInfo_l();
        Locacion l11 = new Locacion(2, ed_i, "Electrónica", funcionarios.get("1019004017"), "IEC-ISO 17025");
        l11.printInfo_l();
        Locacion l12 = new Locacion(3, ed_i, "Geomática", funcionarios.get("1019004018"), "En Proceso");
        l12.printInfo_l();
        Locacion l13 = new Locacion(4, ed_i, "Hidráulica", funcionarios.get("1019004019"), "IEC-ISO 15189");
        l13.printInfo_l();
        Locacion l14 = new Locacion(5, ed_i, "Ingredientes Naturales", funcionarios.get("1019004020"), "En Proceso");
        l14.printInfo_l();
        Locacion l15 = new Locacion(6, ed_i, "Materiales", funcionarios.get("1019004021"), "IEC-ISO 17025");
        l15.printInfo_l();
        Locacion l16 = new Locacion(1, ed_tj2, "Mecánica de Suelos", funcionarios.get("1019004022"), "IEC-ISO 17025");
        l16.printInfo_l();
        Locacion l17 = new Locacion(2, ed_tj2, "Microbiología", funcionarios.get("1019004023"), "En Proceso");
        l17.printInfo_l();
        Locacion l18 = new Locacion(7, ed_i, "Neumática", funcionarios.get("1019004024"), "IEC-ISO 15189");
        l18.printInfo_l();
        Locacion l19 = new Locacion(4, ed_tj2, "Nutrición y Alimentación", funcionarios.get("1019004025"), "En Proceso");
        l19.printInfo_l();
        Locacion l20 = new Locacion(5, ed_tj2, "Pavimentos", funcionarios.get("1019004026"), "IEC-ISO 15189");
        l20.printInfo_l();
        
        Activo e1 = new Activo(1, "Horno de Secado", compras.get(Integer.toString(2020001)), "Guangdong LIYI", 2500000, 3, ed_e, l1);
        e1.printInfo_eqlab();
        Activo e2 = new Activo(2, "Congelador de Ultra-Baja Temperatura", compras.get(Integer.toString(2020002)), "REVCO", 3000000, 4, ed_e, l2);
        e2.printInfo_eqlab();
        Activo e3 = new Activo(3, "Polarímetro de Media Sombra", compras.get(Integer.toString(2020003)), "NVIS Technologies", 1800000, 5, ed_e, l3);
        e3.printInfo_eqlab();
        Activo e4 = new Activo(4, "Calentador de agua con bomba de calor", compras.get(Integer.toString(2020004)), "SPRSUN Heat", 8000000, 5, ed_e, l4);
        e4.printInfo_eqlab();
        Activo e5 = new Activo(5, "Lavacristales", compras.get(Integer.toString(2020005)), "Steris Finn-Aqua", 5560000, 5, ed_e, l5);
        e5.printInfo_eqlab();
        
        Object[] comprasKeys = compras.keySet().toArray();
        Iterator it3 = salones.entrySet().iterator();
        int idActivo = 6; 
        int contador = 0;
        while (it3.hasNext()) {  
            Object randomCompra = comprasKeys[new Random().nextInt(comprasKeys.length)];
            Map.Entry pair = (Map.Entry)it3.next();
            if ((contador % 2) == 0) {

                Activo a = new Activo(idActivo, (Compra) compras.get(randomCompra.toString()), 
                                 ((Locacion) pair.getValue()).getEdificio(), (Locacion) pair.getValue());
                a.printInfo_tv();
                idActivo ++;
            }

            Activo ae = new Activo(idActivo, (Compra) compras.get(randomCompra.toString()), "valor solo para garantizar una firma diferente en este constructor",
                                 ((Locacion) pair.getValue()).getEdificio(), (Locacion) pair.getValue());            
            ae.printInfo_pup();
                idActivo ++;
                
            if ((contador % 40) == 0) {
                int num = getRandomInt(14, 18);
                for (int i = 0; i <= num; i++) {
                    Activo eq = new Activo(idActivo, (Compra) compras.get(randomCompra.toString()), 
                                      ((Locacion) pair.getValue()).getEdificio(), (Locacion) pair.getValue(), 0);
                    eq.printInfo_pc_salon();
                    idActivo ++;
                }
            }
            contador ++;
        }
        
        Iterator it5 = auditorios.entrySet().iterator();
        while (it5.hasNext()) {
            Object randomCompra = comprasKeys[new Random().nextInt(comprasKeys.length)];
            Map.Entry pair = (Map.Entry)it5.next();
            Activo a = new Activo(idActivo, (Compra) compras.get(randomCompra.toString()), 
                    ((Locacion) pair.getValue()).getEdificio(), (Locacion) pair.getValue(), "String No Usado");
            idActivo ++;
            a.printInfo_son();
        }
        
        
        Iterator it4 = funcionarios.entrySet().iterator();
        int con = 0;
        while (it4.hasNext()) {
            Object randomCompra = comprasKeys[new Random().nextInt(comprasKeys.length)];
            Map.Entry pair = (Map.Entry)it4.next();
            if ((con % 20) != 0) {
                Locacion loc = oficinas.get("1001");
                for (Map.Entry pairOf : oficinas.entrySet()) {
                    if (((Locacion) pairOf.getValue()).getArea() == ((Funcionario) pair.getValue()).getArea()) {
                        loc = ((Locacion) pairOf.getValue());
                        break;
                    }
                }  
                Activo a = new Activo(idActivo, (Compra) compras.get(randomCompra.toString()), 
                                      loc.getEdificio(), loc,
                                      (Funcionario) pair.getValue());
                a.printInfo_pc();
                idActivo ++;
                Activo ae = new Activo(idActivo, (Compra) compras.get(randomCompra.toString()), 0, 
                                      loc.getEdificio(), loc,
                                      (Funcionario) pair.getValue());
                ae.printInfo_esc();
                idActivo ++;
                Activo as = new Activo(idActivo, (Compra) compras.get(randomCompra.toString()), "Parámetro No Usado en Constructor", 
                                      loc.getEdificio(), loc,
                                      (Funcionario) pair.getValue());
                as.printInfo_gir();
                idActivo ++;
            }
            con ++;
        }
        

    }

    
    public static Locacion getLocacionByFuncionario(Funcionario f, HashMap<String, Locacion> of) {
        for (Map.Entry pair : of.entrySet()) {
            if (((Locacion) pair.getValue()).getArea() == f.getArea()) {
                return ((Locacion) pair.getValue());
            }
        }  
        return null;
    }

    public static int getRandomInt(int min, int max) {
        Random random = new Random();
        return random.nextInt(max - min) + min;
    }
    
    public static String getRandomName(int g) {
        String [] nombres_h = {"Antonio", "José", "Manuel", "Francisco", "Juan", "David", "Javier", "Jesús", 
                              "Carlos", "Daniel", "Miguel", "Rafael", "Pedro", "Alejandro", "Angel", "Fernando",
                              "Luis", "Pablo", "Sergio", "Jorge", "Alberto", "Enrique", "Diego", "Raul", "Adrian",
                              "Ivan", "Andrés", "Oscar", "Santiago", "Eduardo", "Victor", "Roberto", "Jaime", "Ricardo",
                              "Johnatan", "Julián", "Guillermo", "Gabriel", "Gonzalo", "Joan", "Cristian", "Nicolás",
                              "Sebastián", "Felipe", "César", "Esteban", "Rodrigo", "Alex", "Lucas", "Bernardo", "David",
                              "Mateo", "Steven", "Eloy", "Jerónimo", "Gustavo", "Román", "Armando", "Emilio", "Leonardo",
                              "Simón", "Edgar", "Alexis", "Néstor", "Humberto", "Fabián", "Edison", "Paul", "Orlando",
                              "Vicente", "Augusto", "Abelardo", "John", "Andrés", "Julián", "Samuel"};
        String [] nombres_m = {"María", "Ana", "Carmen", "Isabel", "Isabella", "Laura", "Martha", "Lucía", 
                              "Sara", "Paula", "Beatriz", "Rosa", "Juliana", "Andrea", "Valentina", "Sandra",
                              "Sonia", "Natalia", "Verónica", "Carolina", "Claudia", "Lorena", "Inés", "Gloria", "Sofía",
                              "Alejandra", "Gisell", "Elisa", "Daniela", "Vanessa", "Nathaly", "Adela", "Adriana", "Tania",
                              "Jéssica", "Valeria", "Diana", "Mariana", "Jennifer", "Jenny", "Ruth", "Estela",
                              "Mery", "Mary", "Patricia", "Myriam", "Tatiana", "Paola", "Johanna", "Yolanda", "Yamile",
                              "Susana", "Silvia", "Edna", "Luz", "Amparo", "Pilar", "Olga", "Nubia", "Xiomara",
                              "Angie", "Nelly", "Dora", "Nancy", "Katherine", "Lina", "Mónica", "Nicol", "Melissa", "Mayra",
                              "Margarita", "Morelia", "Stephanie", "Angélica", "Lizeth", "Silvana", "Gina", "Milena"};
        String [] apellidos = {"González", "García", "Rodríguez", "Fernández", "López", "Martínez", "Sánchez", "Pérez", 
                              "Gómez", "Martín", "Jiménez", "Hernández", "Díaz", "Moreno", "Álvarez", "Romero",
                              "Alonso", "Gutiérrez", "Navarro", "Torres", "Domínguez", "Vásquez", "Silva", "Ramos", 
                              "Gil", "Ramírez", "Serrano", "Molina", "Morales", "Suárez", "Ortega", "Delgado", 
                              "Castro", "Ortiz", "Rubio", "Marín", "Núñez", "Medina", "Cortés", "Castillo", 
                              "Santos", "Lozano","Guerrero", "Prieto", "Méndez", "Cruz", "León", "Márquez", 
                              "Herrera", "Peña", "Nieto", "Flores", "Cabrera", "Campos", "Vega", "Caballero", 
                              "Duarte", "Reyes", "Montero", "Santana", "Jiménez", "Ibáñez", "Arias", "Vargas", 
                              "Velásquez", "Esteban", "Rojas", "Lara", "Espinoza", "Rivas", "Rivera", "Camacho", 
                              "Redondo", "Quintero", "Luque", "Montes", "Vallejo", "Noratto", "Sierra", "Ortiz", 
                              "Rios", "Segura", "Usaquén", "Carrillo", "Mendoza", "Bernal", "Exposito", "Palacios", 
                              "Macías", "Varela", "Guerra", "Roldán", "Pereira", "Mora", "Moreira", "Aparicio", 
                              "Meléndez", "Estevez", "Beltrán", "Calderón", "Salas", "Quintana", "Acosta", "Bermúdez",
                              "Salazar", "Guzmán", "Figueroa", "Santamaría", "Costa", "Hurtado", "Rey", "Hurtado", 
                              "Pacheco", "Meza", "Alarcón", "Cárdenas", "Cardona", "Barreto", "Barrios", "Montoya", 
                              "Murillo", "Cadavid", "Pinilla", "Galeano", "Bolivar", "Cabello", "Navas", "Amador", 
                              "Galindo", "Asensio", "Valencia", "Burgos"};
        if (g == 1) {
            return nombres_h[getRandomInt(0, 75)] + " " + nombres_h[getRandomInt(0, 75)] 
                    + " " + apellidos[getRandomInt(0, 131)] + " " + apellidos[getRandomInt(0, 131)];
        }
        else {
            return nombres_m[getRandomInt(0, 77)] + " " + nombres_m[getRandomInt(0, 77)] 
                    + " " + apellidos[getRandomInt(0, 131)] + " " + apellidos[getRandomInt(0, 131)];
        }
    }
    
    public static String getRandomMarca(int p) {
        String [] marcas_escritorios = {"Ceccotti", "Flexa", "B&B", "IKEA", "Lexington"};
        String [] marcas_televisores = {"LG", "Samsung", "Sony", "Philips"};
        String [] marcas_computadores = {"Lenovo", "Acer", "Dell", "HP", "Asus", "Toshiba"};
        String [] marcas_giratorias = {"Ibaby", "CashOffice", "SongMics", "Woltu", "TecTake", "EBS"};
        String [] marcas_sonido = {"Audiopro", "Yamaki", "Yamaha", "Panasonic", "PreSonus"};
        if (p == 1) {
            return marcas_escritorios[getRandomInt(0, 5)];
        }
        if (p == 2) {
            return marcas_televisores[getRandomInt(0, 4)];
        }
        if (p == 3) {
            return marcas_computadores[getRandomInt(0, 6)];
        }
        if (p == 4) {
            return marcas_giratorias[getRandomInt(0, 6)];
        }
        if (p == 5) {
            return marcas_giratorias[getRandomInt(0, 5)];
        }
       
        return "null";
    }
    
    public static String getRandomColor(int p) {
        String [] colores_escritorios = {"Marrón", "Beige", "Blanco", "Gris"};
        String [] colores_giratorias = {"Negro", "Azul Oscuro", "Gris"};
        if (p == 1) {
            return colores_escritorios[getRandomInt(0, 3)];
        }
        if (p == 4) {
            return colores_giratorias[getRandomInt(0, 3)];
        }
        return "null";
    }
    
    public static String getRandomTamaño(int p) {
        String [] tamaños_escritorios = {"1.20 m x 0.60 m", "1.20 m x 0.80 m", "1.10 m x 0.60 m", "1.20 m x 0.75 m"};
        if (p == 1) {
            return tamaños_escritorios[getRandomInt(0, 4)];
        }
        return "null";
    }
    
    public static String getRandomMaterial(int p) {
        String [] materiales_escritorios = {"Madera", "Metálico", "Sintético"};
        String [] materiales_giratorias = {"Cuero", "Malla", "Sintético"};
        if (p == 1) {
            return materiales_escritorios[getRandomInt(0, 3)];
        }
        if (p == 4) {
            return materiales_giratorias[getRandomInt(0, 3)];
        }
        return "null";
    }
    
    
    private static final String ALPHA_NUMERIC_STRING = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    public static String randomAlphaNumeric(int count) {
        StringBuilder builder = new StringBuilder();
        while (count-- != 0) {
            int character = (int)(Math.random()*ALPHA_NUMERIC_STRING.length());
            builder.append(ALPHA_NUMERIC_STRING.charAt(character));
        }
        return builder.toString();
    }  
}

class Compra {
    
    private int id; 
    private String fecha;
    private double valor;
    
    public void setId(int id) {
        this.id = id;
    }
    public int getId() {
        return this.id;
    }  
    
    public void setFecha(String f) {
        this.fecha = f;
    }
    public String getFecha() {
        return this.fecha;
    }  
    
    public void setValor(double v) {
        this.valor = v;
    }
    public double getValor() {
        return this.valor;
    }  
    
    public void printInfo() {
        System.out.println("insert into COMPRA "
                         + "(ID_COMPRA, FECHA_COMPRA, VALOR_COMPRA) "
                         + "values (" + this.id + ", TO_DATE(\'" + this.fecha + "\', \'dd/mm/yyyy\')," + (BigDecimal.valueOf(this.valor)).toPlainString() +");");
        System.out.println();
    }
}
    
class Vicerrectoria {
    
    private String id; 
    private String nombre;
    private String vice;
    
    public void setId(String id) {
        this.id = id;
    }
    public String getId() {
        return this.id;
    }  
    
    public void setNombre(String n) {
        this.nombre = n;
    }
    public String getNombre() {
        return this.nombre;
    }  
    
    public void setVice(String v) {
        this.vice = v;
    }
    public String getVice() {
        return this.vice;
    }  
    
    public void printInfo() {
            
        System.out.println("insert into VICERRECTORIA "
                         + "(ID_VICERRECTORIA, NOMBRE_VICERRECTORIA, VICERRECTOR_VICERRECTORIA) "
                         + "values (\'" + this.id + "\',\'" + this.nombre + "\',\'" + this.vice +"\');");
        System.out.println();
    }
}

class Facultad {
    
    private String id; 
    private String nombre;
    private String decano;
    
    public void setId(String id) {
        this.id = id;
    }
    public String getId() {
        return this.id;
    }  
    
    public void setNombre(String n) {
        this.nombre = n;
    }
    public String getNombre() {
        return this.nombre;
    }  
    
    public void setDecano(String v) {
        this.decano = v;
    }
    public String getDecano() {
        return this.decano;
    }  
    
    public void printInfo() {
        
        System.out.println("insert into FACULTAD "
                         + "(ID_FACULTAD, NOMBRE_FACULTAD, DECANO_FACULTAD) "
                         + "values (\'" + this.id + "',\'" + this.nombre + "\',\'" + this.decano + "\');");
        System.out.println();
        
    }
}
    
class Programa {
    
    private Facultad facultad; 
    private String id;
    private String nombre;
    
    public void setId(String id) {
        this.id = id;
    }
    public String getId() {
        return this.id;
    }  
    
    public void setNombre(String n) {
        this.nombre = n;
    }
    public String getNombre() {
        return this.nombre;
    }  
    
    public void setFacultad(Facultad f) {
        this.facultad = f;
    }
    public Facultad getFacultad() {
        return this.facultad;
    }  
    
    public void printInfo() {
        
        System.out.println("insert into PROGRAMA "
                         + "(ID_FACULTAD, ID_PROGRAMA, NOMBRE_PROGRAMA) "
                         + "values (\'" + this.facultad.getId() + "\',\'" + this.id + "\',\'" + this.nombre + "\');");
        System.out.println();
        
    }
}

class Sede {
   
    private int id;
    private String nombre;
    
    public void setId(int id) {
        this.id = id;
    }
    public int getId() {
        return this.id;
    }  
    
    public void setNombre(String n) {
        this.nombre = n;
    }
    public String getNombre() {
        return this.nombre;
    }  
    
    public void printInfo() {
        
       System.out.println("insert into SEDE "
                         + "(ID_SEDE, NOMBRE_SEDE) "
                         + "values (" + this.id + ",\'" + this.nombre + "\');");
        System.out.println();

    }
    
}

class Edificio {
    
    private Sede sede;
    private int id;
    private String nombre;
    
    public void setId(int id) {
        this.id = id;
    }
    public int getId() {
        return this.id;
    }  
    
    public void setNombre(String n) {
        this.nombre = n;
    }
    public String getNombre() {
        return this.nombre;
    }  
    
    public void setSede(Sede s) {
        this.sede = s;
    }
    public Sede getSede() {
        return this.sede;
    }  
    
    public void printInfo() {
        
        System.out.println("insert into EDIFICIO "
                         + "(ID_SEDE, ID_EDIFICIO, NOMBRE_EDIFICIO)  "
                         + "values (" + this.sede.getId() + "," + this.id + ",\'" + this.nombre + "\');");
        System.out.println();
        
    }
}

class Departamento {
    
    private int id;
    private String nombre;
    private String director;
    private Vicerrectoria vicerrectoria;
    private Facultad facultad;
    
    public void setId(int id) {
        this.id = id;
    }
    public int getId() {
        return this.id;
    }  
    
    public void setNombre(String n) {
        this.nombre = n;
    }
    public String getNombre() {
        return this.nombre;
    }  
    
    public void setDirector(String d) {
        this.director = d;
    }
    public String getDirector() {
        return this.director;
    }  
    
    public void setVicerrectoria(Vicerrectoria v) {
        this.vicerrectoria = v;
    }
    public Vicerrectoria getVicerrectoria() {
        return this.vicerrectoria;
    }  
    
    public void setFacultad(Facultad f) {
        this.facultad = f;
    }
    public Facultad getFacultad() {
        return this.facultad;
    }  
    
    public void printInfo_v() {
        
        System.out.println("insert into DEPARTAMENTO "
                         + "(ID_DEPARTAMENTO, NOMBRE_DEPARTAMENTO, DIRECTOR_DEPARTAMENTO, ID_VICERRECTORIA, ID_FACULTAD)"
                         + "values (" + this.id + ",\'" + this.nombre + "\',\'" + this.director + "\',\'" 
                         + this.vicerrectoria.getId() + "\', null" + ");");
        System.out.println();
        
    }
    public void printInfo_f() {
        
        System.out.println("insert into DEPARTAMENTO "
                         + "(ID_DEPARTAMENTO, NOMBRE_DEPARTAMENTO, DIRECTOR_DEPARTAMENTO, ID_VICERRECTORIA, ID_FACULTAD)"
                         + "values (" + this.id + ",\'" + this.nombre + "\',\'" + this.director + "\', null,\'" 
                         + this.facultad.getId() + "\');");
        System.out.println();
    }

}

class Area {
    
    private int id;
    private String nombre;
    private Facultad facultad;
    private Departamento departamento;
    
    public Area(int id, String n, Facultad f){
        this.setId(id);
        this.setNombre(n);
        this.setFacultad(f);
    }
    
    public Area(int id, String n, Departamento d){
        this.setId(id);
        this.setNombre(n);
        this.setDepartamento(d);
    }
    
    public void setId(int id) {
        this.id = id;
    }
    public int getId() {
        return this.id;
    }  
    
    public void setNombre(String n) {
        this.nombre = n;
    }
    public String getNombre() {
        return this.nombre;
    }  
    
    public void setFacultad(Facultad f) {
        this.facultad = f;
    }
    public Facultad getFacultad() {
        return this.facultad;
    }  
    
    public void setDepartamento(Departamento d) {
        this.departamento = d;
    }
    public Departamento getDepartamento() {
        return this.departamento;
    }  
    
    public void printInfo_d() {
 
        System.out.println("insert into AREA "
                         + "(ID_AREA, NOMBRE_AREA, ID_FACULTAD, ID_DEPARTAMENTO) "
                         + "values (" + this.id + ",\'" + this.nombre + "\', null," + this.departamento.getId() + ");");
        System.out.println();
        
    }
    public void printInfo_f() {
        
        System.out.println("insert into AREA "
                         + "(ID_AREA, NOMBRE_AREA, ID_FACULTAD, ID_DEPARTAMENTO) "
                         + "values (" + this.id + ",\'" + this.nombre + "\',\'" + this.facultad.getId()+ "\', null);");
        System.out.println();        

    }
}

class Funcionario {

    private int id;
    private String nombre;
    private String inic;
    private String fin;
    private Funcionario jefe;
    private char tipo;
    private String cargo;
    private Area area;
    private String titulo;
    private String rol;
    private Programa programa;
    private Facultad facultad;
    private String tipoAux;
    
    public Funcionario(int id, String n, String i, Area a){
        this.setId(id);
        this.setNombre(n);
        this.setInic(i);
        this.setTipo('E');
        this.setCargo("Jefe de Área");
        this.setArea(a);
    }
    
    public Funcionario(int id, String n, Funcionario j, String i, Area a){
        this.setId(id);
        this.setNombre(n);
        this.setInic(i);
        this.setJefe(j);
        this.setTipo('E');
        this.setCargo("Coordinador");
        this.setArea(a);
    }
    
    public Funcionario(int id, String n, Funcionario j, String i, int c, Area a){
        this.setId(id);
        this.setNombre(n);
        this.setInic(i);
        this.setJefe(j);
        this.setTipo('E');
        if (c == 1) {
            this.setCargo("Asistente");
        } else {
            this.setCargo("Asistente Jr.");
        } 
        this.setArea(a);
    }
    
    public Funcionario(int id, String n, String i, int t, Programa p){
        this.setId(id);
        this.setNombre(n);
        this.setInic(i);
        this.setTipo('D');
        switch (t) {
            case 0:
                this.setTitulo("Doctorado");
                break;
            case 1:
                this.setTitulo("Maestría");
                break;
            case 2:
                this.setTitulo("Especialización");
                this.setRol("Instructor");
                break;
        }
        int z = (id+t)%3;
        if (t == 1 && z == 0) {
            this.setRol("Asistente");
        } else if (t == 1 && (z == 0 || z == 1)) {
            this.setRol("Asociado");
        } else if (t == 1 && z == 2) {
            this.setRol("Titular");
        } else if (t == 0 && z == 0) {
            this.setRol("Titular");
        } else if (t == 0 && (z == 1 || z == 2)) {
            this.setRol("Asociado");
        }
        this.setPrograma(p);
        this.setFacultad(p.getFacultad());
    }
    
    public Funcionario(int id, String n, String i, Funcionario j, Area a, String ta){
        this.setId(id);
        this.setNombre(n);
        this.setInic(i);
        this.setJefe(j);
        this.setTipo('E');
        this.setCargo("Auxiliar");
        this.setArea(a);
        this.setTipoAux(ta);
    }
    
    public void setId(int id) {
        this.id = id;
    }
    public int getId() {
        return this.id;
    }  
    
    public void setNombre(String n) {
        this.nombre = n;
    }
    public String getNombre() {
        return this.nombre;
    }  
    
    public void setInic(String i) {
        this.inic = i;
    }
    public String getInic() {
        return this.inic;
    }  
    
    public void setFin(String f) {
        this.fin = f;
    }
    public String getFin() {
        return this.fin;
    }  
    
    public void setJefe(Funcionario j) {
        this.jefe = j;
    }
    public Funcionario getJefe() {
        return this.jefe;
    }  
    
    public void setTipo(char t) {
        this.tipo = t;
    }
    public char getTipo() {
        return this.tipo;
    }  
    
    public void setCargo(String c) {
        this.cargo = c;
    }
    public String getCargo() {
        return this.cargo;
    }  
    
    public void setArea(Area a) {
        this.area = a;
    }
    public Area getArea() {
        return this.area;
    } 
    
    public void setTitulo(String t) {
        this.titulo = t;
    }
    public String getTitulo() {
        return this.titulo;
    }  
    
    public void setRol(String r) {
        this.rol = r;
    }
    public String getRol() {
        return this.rol;
    }  
    
    public void setPrograma(Programa p) {
        this.programa = p;
    }
    public Programa getPrograma() {
        return this.programa;
    }  
    
    public void setFacultad(Facultad f) {
        this.facultad = f;
    }
    public Facultad getFacultad() {
        return this.facultad;
    }  
     
    public void setTipoAux(String t) {
        this.tipoAux = t;
    }
    public String getTipoAux() {
        return this.tipoAux;
    }
    
    public void printInfo_j() {
        
        System.out.println("insert into FUNCIONARIO "
                         + "(ID_FUNCIONARIO, NOMBRE_FUNCIONARIO, INIC_CONTRATO_FUNCIONARIO, FIN_CONTRATO_FUNCIONARIO, "
                         + " ID_JEFE, TIPO_FUNCIONARIO, CARGO_EMPLEADO, ID_AREA, TITULO_DOCENTE, ROL_DOCENTE, ID_FACULTAD, "
                         + "ID_PROGRAMA, TIPO_AUXILIAR)  "
                         + "values (" + this.id + ",\'" + this.nombre + "\',TO_DATE(\'" + this.inic + "\', \'dd/mm/yyyy\'), null, null,\'" + this.tipo + "\',\'" 
                         + this.cargo + "\'," + this.area.getId() + ", null, null, null, null, null);");
        System.out.println();        
        
    }
    
    public void printInfo_c_a() {

        System.out.println("insert into FUNCIONARIO "
                         + "(ID_FUNCIONARIO, NOMBRE_FUNCIONARIO, INIC_CONTRATO_FUNCIONARIO, FIN_CONTRATO_FUNCIONARIO, "
                         + " ID_JEFE, TIPO_FUNCIONARIO, CARGO_EMPLEADO, ID_AREA, TITULO_DOCENTE, ROL_DOCENTE, ID_FACULTAD, "
                         + "ID_PROGRAMA, TIPO_AUXILIAR)  "
                         + "values (" + this.id + ",\'" + this.nombre + "\',TO_DATE(\'" + this.inic + "\', \'dd/mm/yyyy\'), null," + this.jefe.getId() + ",\'" + this.tipo + "\',\'" 
                         + this.cargo + "\'," + this.area.getId() + ", null, null, null, null, null);");
        System.out.println();                

    }
    
    public void printInfo_d() {
        
        System.out.println("insert into FUNCIONARIO "
                         + "(ID_FUNCIONARIO, NOMBRE_FUNCIONARIO, INIC_CONTRATO_FUNCIONARIO, FIN_CONTRATO_FUNCIONARIO, "
                         + " ID_JEFE, TIPO_FUNCIONARIO, CARGO_EMPLEADO, ID_AREA, TITULO_DOCENTE, ROL_DOCENTE, ID_FACULTAD, "
                         + "ID_PROGRAMA, TIPO_AUXILIAR)  "
                         + "values (" + this.id + ",\'" + this.nombre + "\',TO_DATE(\'" + this.inic + "\', \'dd/mm/yyyy\'), "
                         + "null, null,\'" + this.tipo + "\', null, null,\'" 
                         + this.titulo + "\',\'" + this.rol + "\',\'" + this.facultad.getId() + "\',\'" 
                         + this.programa.getId() + "\', null);");
        System.out.println();           
    }
    
    public void printInfo_aux() {
        
        System.out.println("insert into FUNCIONARIO "
                         + "(ID_FUNCIONARIO, NOMBRE_FUNCIONARIO, INIC_CONTRATO_FUNCIONARIO, FIN_CONTRATO_FUNCIONARIO, "
                         + " ID_JEFE, TIPO_FUNCIONARIO, CARGO_EMPLEADO, ID_AREA, TITULO_DOCENTE, ROL_DOCENTE, ID_FACULTAD, "
                         + "ID_PROGRAMA, TIPO_AUXILIAR)  "
                         + "values (" + this.id + ",\'" + this.nombre + "\',TO_DATE(\'" + this.inic + "\', \'dd/mm/yyyy\'), null," + this.jefe.getId() + ",\'" + this.tipo + "\',\'" 
                         + this.cargo + "\'," + this.area.getId() + ", null, null, null, null,\'" + this.tipoAux + "\');");
        System.out.println();              
        
    }
}

class Locacion {

    private int id;
    private Edificio edificio;
    private String nombre;
    private char tipo;
    private int capacidad;
    private String tipoSalon;
    private int puestosOficina;
    private Area area;
    private Funcionario auxiliar;
    private String acreditacion;
    
    public Locacion(int id, Edificio e, String n, int c) {
        this.id = id;
        this.edificio = e;
        this.nombre = n;
        this.tipo = 'S';
        if (c == 0) {
            this.capacidad = getRandomInt(2, 7) * 10;
        } else {
            this.capacidad = getRandomInt(10, 15) * 10;
            this.tipoSalon = "AUD";
        }
    }
    public Locacion(int id, Edificio e, String n, Area a) {
        this.id = id;
        this.edificio = e;
        this.nombre = n;
        this.tipo = 'O';
        this.puestosOficina = getRandomInt(3, 12);
        this.area = a;
    }
    public Locacion(int id, Edificio e, String n, Funcionario a, String acr) {
        this.id = id;
        this.edificio = e;
        this.nombre = n;
        this.tipo = 'L';
        this.puestosOficina = getRandomInt(1, 9);
        this.auxiliar = a;
        this.acreditacion = acr;
    }
 
    public void printInfo_s() {
      
        System.out.println("insert into LOCACION "
                         + "(ID_EDIFICIO, ID_LOCACION, NOMBRE_LOCACION, TIPO_LOCACION, "
                         + " CAPACIDAD_SALON, TIPO_SALON, PUESTOS_OFICINA, ID_AREA, ID_AUXILIAR, ACREDITACION_LAB)  "
                         + "values (" + this.edificio.getId() + "," + this.id + ",\'" + this.nombre + "\',\'" + this.tipo 
                         + "\'," + this.capacidad + ", null, null, null, null, null);");
        System.out.println();       
    }
    public void printInfo_aud() {
      
        System.out.println("insert into LOCACION "
                         + "(ID_EDIFICIO, ID_LOCACION, NOMBRE_LOCACION, TIPO_LOCACION, "
                         + " CAPACIDAD_SALON, TIPO_SALON, PUESTOS_OFICINA, ID_AREA, ID_AUXILIAR, ACREDITACION_LAB)  "
                         + "values (" + this.edificio.getId() + "," + this.id + ",\'" + this.nombre + "\',\'" + this.tipo 
                         + "\'," + this.capacidad + ",\'" +  this.tipoSalon + "\', null, null, null, null);");
        System.out.println();       
    }

    public void printInfo_o() {
      
        System.out.println("insert into LOCACION "
                         + "(ID_EDIFICIO, ID_LOCACION, NOMBRE_LOCACION, TIPO_LOCACION, "
                         + " CAPACIDAD_SALON, TIPO_SALON, PUESTOS_OFICINA, ID_AREA, ID_AUXILIAR, ACREDITACION_LAB)  "
                         + "values (" + this.edificio.getId() + "," + this.id + ",\'" + this.nombre + "\',\'" + this.tipo 
                         + "\', null, null," + this.puestosOficina + "," 
                         + this.area.getId() + ", null, null);");
        System.out.println();       
    }    
    
    public void printInfo_l() {
      
        System.out.println("insert into LOCACION "
                         + "(ID_EDIFICIO, ID_LOCACION, NOMBRE_LOCACION, TIPO_LOCACION, "
                         + " CAPACIDAD_SALON, TIPO_SALON, PUESTOS_OFICINA, ID_AREA, ID_AUXILIAR, ACREDITACION_LAB)  "
                         + "values (" + this.edificio.getId() + "," + this.id + ",\'" + this.nombre + "\',\'" + this.tipo 
                         + "\', null, null, null, null,\'" + this.auxiliar.getId() + "\',\'" 
                         + this.acreditacion + "\');");
        System.out.println();       
    }    
    
    
    public void setId(int id) {
        this.id = id;
    }
    public int getId() {
        return this.id;
    }  

    public void setEdificio(Edificio e) {
        this.edificio = e;
    }
    public Edificio getEdificio() {
        return this.edificio;
    }      
    
    public void setNombre(String n) {
        this.nombre = n;
    }
    public String getNombre() {
        return this.nombre;
    }  
    public void setTipo(char t) {
        this.tipo = t;
    }
    public char getTipo() {
        return this.tipo;
    }  
    public void setCapacidad(int c) {
        this.capacidad = c;
    }
    public int getCapacidad() {
        return this.capacidad;
    }  
    public void setTipoSalon(String ts) {
        this.tipoSalon = ts;
    }
    public String getTipoSalon() {
        return this.tipoSalon;
    }  
    public void setPuestosOf(int p) {
        this.puestosOficina = p;
    }
    public int getPuestosOf() {
        return this.puestosOficina;
    }  
    
    public void setArea(Area a) {
        this.area = a;
    }
    public Area getArea() {
        return this.area;
    }  
    public void setAuxiliar(Funcionario aux) {
        this.auxiliar = aux;
    }
    public Funcionario getAuxiliar() {
        return this.auxiliar;
    }    
    public void setAcreditacion(String acr) {
        this.acreditacion = acr;
    }
    public String getAcreditacion() {
        return this.acreditacion;
    }  
}

class Activo {
    
    private int id;
    private Compra compra;
    private String ref;
    private String categoria;
    private String nombre;
    private String marca;
    private double valor;
    private int depreciacion;
    private Funcionario funcionario;
    private Edificio edificio;
    private Locacion locacion;
    private String material;
    private String color;
    private String tamaño;
    private String componentes;

    public Activo(int id, Compra c, Edificio e, Locacion l) {
        
        // Constructor para Televisores
        this.id = id;
        this.compra = c;
        this.ref = randomAlphaNumeric(15);
        this.categoria = "CAE";
        this.nombre = "Televisor";
        this.tamaño = Integer.toString((getRandomInt(28, 32))) + " pulgadas";
        this.marca = getRandomMarca(2);
        this.valor = getRandomInt(1000000, 1500000);
        this.depreciacion = 10;
        this.edificio = e;
        this.locacion = l;     
    }
    
    public void printInfo_tv() {
      
        System.out.println("insert into ACTIVO "
                         + "(ID_ACTIVO, ID_COMPRA, REFERENCIA_ACTIVO, CATEGORIA_ACTIVO, NOMBRE_ACTIVO, "
                         + "MARCA_ACTIVO, VALOR_ACTIVO, DEPRECIACION_ACTIVO, ID_FUNCIONARIO, ID_EDIFICIO, "
                         + "ID_LOCACION, MATERIAL_ACTIVO, COLOR_ACTIVO, TAMANO_ACTIVO, COMPONENTES_ACTIVO)  "
                         + "values (" + this.id + "," + this.compra.getId() + ",\'" + this.ref + "\',\'" + this.categoria + "\',\'"
                         + this.nombre + "\',\'" + this.marca + "\'," + this.valor + "," + this.depreciacion + ", null," 
                         + this.edificio.getId() + "," + this.locacion.getId() + ", null, null,\'" + this.tamaño + "\', null);");
        System.out.println();       
    }    
    
    public Activo(int id, Compra c, Edificio e, Locacion l, String com) {
        
        // Constructor para Equipos de Sonido de los Auditorios
        this.id = id;
        this.compra = c;
        this.ref = randomAlphaNumeric(25);
        this.categoria = "LOG";
        this.nombre = "Equipo de Sonido";
        this.marca = getRandomMarca(5);
        this.valor = getRandomInt(3000000, 5000000);
        this.depreciacion = 8;
        this.edificio = e;
        this.locacion = l;  
        this.componentes = "Juego de Micrófonos, Soportes, Amplificador, Mezclador, Altavoces";
    }
    
    public void printInfo_son() {
      
        System.out.println("insert into ACTIVO "
                         + "(ID_ACTIVO, ID_COMPRA, REFERENCIA_ACTIVO, CATEGORIA_ACTIVO, NOMBRE_ACTIVO, "
                         + "MARCA_ACTIVO, VALOR_ACTIVO, DEPRECIACION_ACTIVO, ID_FUNCIONARIO, ID_EDIFICIO, "
                         + "ID_LOCACION, MATERIAL_ACTIVO, COLOR_ACTIVO, TAMANO_ACTIVO, COMPONENTES_ACTIVO)  "
                         + "values (" + this.id + "," + this.compra.getId() + ",\'" + this.ref + "\',\'" + this.categoria + "\',\'"
                         + this.nombre + "\',\'" + this.marca + "\'," + this.valor + "," + this.depreciacion + ", null," 
                         + this.edificio.getId() + "," + this.locacion.getId() + ", null, null, null,\'" + this.componentes + "\');");
        System.out.println();       
    }    
    
    public Activo(int id, Compra c, Edificio e, Locacion l, Funcionario f) {
        
        // Constructor para Computadores de Escritorio
        this.id = id;
        this.compra = c;
        this.ref = randomAlphaNumeric(20);
        this.categoria = "DTS";
        this.nombre = "Computador de Escritorio";
        this.tamaño = Integer.toString((getRandomInt(1, 7) + 20)) + " pulgadas";
        this.marca = getRandomMarca(3);
        this.valor = getRandomInt(1800000, 3000000);
        this.depreciacion = 10;
        this.edificio = e;
        this.locacion = l;    
        this.funcionario = f;
    }
    
    public void printInfo_pc() {
      
        System.out.println("insert into ACTIVO "
                         + "(ID_ACTIVO, ID_COMPRA, REFERENCIA_ACTIVO, CATEGORIA_ACTIVO, NOMBRE_ACTIVO, "
                         + "MARCA_ACTIVO, VALOR_ACTIVO, DEPRECIACION_ACTIVO, ID_FUNCIONARIO, ID_EDIFICIO, "
                         + "ID_LOCACION, MATERIAL_ACTIVO, COLOR_ACTIVO, TAMANO_ACTIVO, COMPONENTES_ACTIVO)  "
                         + "values (" + this.id + "," + this.compra.getId() + ",\'" + this.ref + "\',\'" + this.categoria + "\',\'"
                         + this.nombre + "\',\'" + this.marca + "\'," + this.valor + "," + this.depreciacion + "," + this.funcionario.getId() + "," 
                         + this.edificio.getId() + "," + this.locacion.getId() + ", null, null,\'" + this.tamaño + "\', null);");
        System.out.println();       
    }   
    
    public Activo(int id, Compra c, Edificio e, Locacion l, int not_used) {
        
        // Constructor para Computadores de Escritorio de Salones de Informática
        this.id = id;
        this.compra = c;
        this.ref = randomAlphaNumeric(20);
        this.categoria = "DTS";
        this.nombre = "Computador de Escritorio";
        this.tamaño = Integer.toString((getRandomInt(1, 7) + 20)) + " pulgadas";
        this.marca = getRandomMarca(3);
        this.valor = getRandomInt(1800000, 3000000);
        this.depreciacion = 10;
        this.edificio = e;
        this.locacion = l;    
    }
    
    public void printInfo_pc_salon() {
      
        System.out.println("insert into ACTIVO "
                         + "(ID_ACTIVO, ID_COMPRA, REFERENCIA_ACTIVO, CATEGORIA_ACTIVO, NOMBRE_ACTIVO, "
                         + "MARCA_ACTIVO, VALOR_ACTIVO, DEPRECIACION_ACTIVO, ID_FUNCIONARIO, ID_EDIFICIO, "
                         + "ID_LOCACION, MATERIAL_ACTIVO, COLOR_ACTIVO, TAMANO_ACTIVO, COMPONENTES_ACTIVO)  "
                         + "values (" + this.id + "," + this.compra.getId() + ",\'" + this.ref + "\',\'" + this.categoria + "\',\'"
                         + this.nombre + "\',\'" + this.marca + "\'," + this.valor + "," + this.depreciacion + ", null," 
                         + this.edificio.getId() + "," + this.locacion.getId() + ", null, null,\'" + this.tamaño + "\', null);");
        System.out.println();       
    }  
    
    public Activo(int id, Compra c, String r, Edificio e, Locacion l, Funcionario f) {
        
        // Constructor para Sillas Giratorias
        this.id = id;
        this.compra = c;
        this.ref = randomAlphaNumeric(10);
        this.categoria = "SGT";
        this.nombre = "Silla Giratoria";
        this.marca = getRandomMarca(4);
        this.valor = getRandomInt(160000, 350000);
        this.material = getRandomMaterial(4);
        this.color = getRandomColor(4);
        this.depreciacion = 8;
        this.edificio = e;
        this.locacion = l;    
        this.funcionario = f;
    }
    
    public void printInfo_gir() {
      
        System.out.println("insert into ACTIVO "
                         + "(ID_ACTIVO, ID_COMPRA, REFERENCIA_ACTIVO, CATEGORIA_ACTIVO, NOMBRE_ACTIVO, "
                         + "MARCA_ACTIVO, VALOR_ACTIVO, DEPRECIACION_ACTIVO, ID_FUNCIONARIO, ID_EDIFICIO, "
                         + "ID_LOCACION, MATERIAL_ACTIVO, COLOR_ACTIVO, TAMANO_ACTIVO, COMPONENTES_ACTIVO)  "
                         + "values (" + this.id + "," + this.compra.getId() + ",\'" + this.ref + "\',\'" + this.categoria + "\',\'"
                         + this.nombre + "\',\'" + this.marca + "\'," + this.valor + "," + this.depreciacion + "," + this.funcionario.getId() + "," 
                         + this.edificio.getId() + "," + this.locacion.getId() + ",\'" + this.material + "\',\'" + this.color + "\', null, null);");
        System.out.println();       
    }   
    
    
    public Activo(int id, Compra c, String r, Edificio e, Locacion l) {
        
        // Constructor para Escritorios de Salones para los profesores
        this.id = id;
        this.compra = c;
        this.ref = randomAlphaNumeric(9);;
        this.categoria = "SGT";
        this.nombre = "Pupitre";
        this.marca = getRandomMarca(1);;
        this.valor = getRandomInt(200000, 250000);
        this.depreciacion = 5;
        this.edificio = e;
        this.locacion = l;  
        this.material = getRandomMaterial(1);
        this.color = getRandomColor(1);
        this.tamaño = getRandomTamaño(1);
    }
    
    public void printInfo_pup() {
      
        System.out.println("insert into ACTIVO "
                         + "(ID_ACTIVO, ID_COMPRA, REFERENCIA_ACTIVO, CATEGORIA_ACTIVO, NOMBRE_ACTIVO, "
                         + "MARCA_ACTIVO, VALOR_ACTIVO, DEPRECIACION_ACTIVO, ID_FUNCIONARIO, ID_EDIFICIO, "
                         + "ID_LOCACION, MATERIAL_ACTIVO, COLOR_ACTIVO, TAMANO_ACTIVO, COMPONENTES_ACTIVO)  "
                         + "values (" + this.id + "," + this.compra.getId() + ",\'" + this.ref + "\',\'" + this.categoria + "\',\'"
                         + this.nombre + "\',\'" + this.marca + "\'," + this.valor + "," + this.depreciacion + ", null," 
                         + this.edificio.getId() + "," + this.locacion.getId() + ",\'" + this.material + "\',\'" + this.color + "\',\'" + this.tamaño + "\', null);");
        System.out.println();       
    }   
    
    public Activo(int id, Compra c, int r, Edificio e, Locacion l, Funcionario f) {
        
        // Constructor para Escritorios de Oficinas
        this.id = id;
        this.compra = c;
        this.ref = randomAlphaNumeric(9);;
        this.categoria = "SGT";
        this.nombre = "Escritorio";
        this.marca = getRandomMarca(1);;
        this.valor = getRandomInt(200000, 300000);
        this.depreciacion = 7;
        this.edificio = e;
        this.locacion = l;  
        this.material = getRandomMaterial(1);
        this.color = getRandomColor(1);
        this.tamaño = getRandomTamaño(1);
        this.funcionario = f;
    }
    
    public void printInfo_esc() {
      
        System.out.println("insert into ACTIVO "
                         + "(ID_ACTIVO, ID_COMPRA, REFERENCIA_ACTIVO, CATEGORIA_ACTIVO, NOMBRE_ACTIVO, "
                         + "MARCA_ACTIVO, VALOR_ACTIVO, DEPRECIACION_ACTIVO, ID_FUNCIONARIO, ID_EDIFICIO, "
                         + "ID_LOCACION, MATERIAL_ACTIVO, COLOR_ACTIVO, TAMANO_ACTIVO, COMPONENTES_ACTIVO)  "
                         + "values (" + this.id + "," + this.compra.getId() + ",\'" + this.ref + "\',\'" + this.categoria + "\',\'"
                         + this.nombre + "\',\'" + this.marca + "\'," + this.valor + "," + this.depreciacion + "," + this.funcionario.getId() + "," 
                         + this.edificio.getId() + "," + this.locacion.getId() + ",\'" + this.material + "\',\'" + this.color + "\',\'" + this.tamaño + "\', null);");
        System.out.println();       
    }   
    
    public Activo(int id, String n, Compra c, String m, double v, int d, Edificio e, Locacion l) { 
        // Constructor para equipos de laboratorio
        this.id = id;
        this.ref = randomAlphaNumeric(18);
        this.nombre = n;
        this.compra = c;
        this.marca = m;
        this.categoria = "LAB";
        this.valor = v;
        this.depreciacion = d;
        this.edificio = e;
        this.locacion = l;      
    }
 
    public void printInfo_eqlab() {
      
        System.out.println("insert into ACTIVO "
                         + "(ID_ACTIVO, ID_COMPRA, REFERENCIA_ACTIVO, CATEGORIA_ACTIVO, NOMBRE_ACTIVO, "
                         + "MARCA_ACTIVO, VALOR_ACTIVO, DEPRECIACION_ACTIVO, ID_FUNCIONARIO, ID_EDIFICIO, "
                         + "ID_LOCACION, MATERIAL_ACTIVO, COLOR_ACTIVO, TAMANO_ACTIVO, COMPONENTES_ACTIVO)  "
                         + "values (" + this.id + "," + this.compra.getId() + ",\'" + this.ref + "\',\'" + this.categoria + "\',\'"
                         + this.nombre + "\',\'" + this.marca + "\'," + this.valor + "," + this.depreciacion + ", null," 
                         + this.edificio.getId() + "," + this.locacion.getId() + ", null, null, null, null);");
        System.out.println();       
    }  
    
    
    public void setId(int id) {
        this.id = id;
    }
    public int getId() {
        return this.id;
    }  
    
    public void setRef(String r) {
        this.ref = r;
    }
    public String getRef() {
        return this.ref;
    }  

    public void setCategoría(String c) {
        this.categoria = c;
    }
    public String getCategoria() {
        return this.categoria;
    }  
    
    public void setNombre(String n) {
        this.nombre = n;
    }
    public String getNombre() {
        return this.nombre;
    }  
    
    public void setMarca(String m) {
        this.marca = m;
    }
    public String getMarca() {
        return this.marca;
    }  
    
    public void setMaterial(String m) {
        this.material = m;
    }
    public String getMaterial() {
        return this.material;
    }  
    
    public void setTamaño(String t) {
        this.tamaño = t;
    }
    public String getTamaño() {
        return this.tamaño;
    }  
    
    public void setComponentes(String c) {
        this.componentes = c;
    }
    public String getComponentes() {
        return this.componentes;
    }  
    
    public void setColor(String c) {
        this.color = c;
    }
    public String getColor() {
        return this.color;
    }  
    
    
    public void setEdificio(Edificio e) {
        this.edificio = e;
    }
    public Edificio getEdificio() {
        return this.edificio;
    }  
    
    public void setLocacion(Locacion l) {
        this.locacion = l;
    }
    public Locacion getLocacion() {
        return this.locacion;
    }      
    
    public void setCompra(Compra c) {
        this.compra = c;
    }
    public Compra getCompra() {
        return this.compra;
    }  
    
    public void setDepreciacion(int d) {
        this.depreciacion = d;
    }
    public int getDepreciacion() {
        return this.depreciacion;
    }  
    
    public void setValor(double v) {
        this.valor = v;
    }
    public double getValor() {
        return this.valor;
    }  
    
    public void setFuncionario(Funcionario f) {
        this.funcionario = f;
    }
    public Funcionario getFuncionario() {
        return this.funcionario;
    }      
    
    
}
