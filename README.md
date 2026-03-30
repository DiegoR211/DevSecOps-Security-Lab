# DevSecOps-Security-Lab
Laboratorio de automatización de ciberseguridad (CI/CD) escaneando contenedores Docker con Trivy.
# 🛡️ DevSecOps Pipeline: Escaneo Automatizado de Contenedores con Trivy

## 📝 Descripción del Proyecto
Este laboratorio práctico demuestra la implementación de prácticas **DevSecOps** y la filosofía **Shift-Left Security**. El objetivo es automatizar la detección de vulnerabilidades en contenedores Docker directamente en la fase de Integración Continua (CI), evitando que código inseguro llegue a producción.

## 🛠️ Stack Tecnológico
* **Contenedores:** Docker
* **CI/CD:** GitHub Actions
* **Ciberseguridad:** Aqua Trivy (Vulnerability Scanner)
* **OS:** Linux (Ubuntu)

## ⚙️ Arquitectura del Pipeline
1. **Push:** El desarrollador sube un nuevo `Dockerfile` al repositorio.
2. **Build:** GitHub Actions levanta un entorno efímero y construye la imagen Docker localmente.
3. **Scan:** Se ejecuta Aqua Trivy configurado para buscar vulnerabilidades en el sistema operativo y librerías (`os,library`).
4. **Gatekeeper (Bloqueo):** Si Trivy detecta vulnerabilidades con severidad `CRITICAL` o `HIGH`, el proceso devuelve un `exit-code: 1`, **bloqueando el pipeline de forma automática** y alertando al equipo.

## 🚀 Resultado
En este laboratorio, se utilizó intencionalmente una imagen obsoleta (`ubuntu:18.04`). El pipeline cumplió su función: interceptó el despliegue y generó un reporte detallado de los CVEs críticos, demostrando cómo la automatización previene brechas de seguridad desde el código fuente.
