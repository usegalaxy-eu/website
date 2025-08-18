---
layout: subsite-galaxy
website: https://ecology.usegalaxy.eu
subdomain: ecology
---

# Welcome to **Galaxy for Ecology** -- a web platform to get, process, analyze and visualize ecological data

<center><img src="./assets/media//Galaxy-E-concarneau-team-2018-logo.gif" height="225px" alt="PNDB french Biodiversity e-infrastructure"/></center>

<div class="card-container">
    <div class="card">
        <h2>Guide tour</h2>
        <p>Are you new to Galaxy, or returning after a long time, and looking for help to get started?</p>
        <img src="./assets/media/galaxy-eu.svg"/>
        <div align="center">
            <a href="https://ecology.usegalaxy.eu/tours/core.galaxy_ui" class="show-iframe" data-target="displayhere">
            <button type="button" class="btn btn-primary btn-lg">Take a guide tour through Galaxy’s user interface.</button>
            </a>
        </div>
    </div>
    <div class="card">
        <h2>Tutorials</h2>
        <p>Want to learn about ecology analyses?</p>
        <img src="./assets/media/gtn_logo.png"/>
        <div align="center">
            <a href="https://training.galaxyproject.org/training-material/topics/ecology/" class="show-iframe" data-target="displayhere">
            <button type="button" class="btn btn-primary btn-lg">Check our tutorials</button>
            </a>
        </div>
    </div>
    <div class="card">
        <h2>Workflows</h2>
        <img src="./assets/media/workflow3.png"/>
        <div align="center">
            <a href="https://ecology.usegalaxy.eu/workflows/list_published" class="show-iframe" data-target="displayhere">
            <button type="button" class="btn btn-primary btn-lg">Access public workflows</button>
            </a>
        </div>
    </div>
</div>

<iframe id="displayhere" frameborder="0" style="display:none;"></iframe>

## Projects

<div class="card-container">
    <div class="card">
        <h2>Citizen science on marmalade hoverflies</h2>
        <p>Want to classify hoverflies pictures?</p>
        <img src="./assets/media/Example_image_task.jpg"/>
        <div align="center">
            <a href="https://usegalaxy.eu/gapars-experiment/" class="show-iframe" data-target="displayhere2">
            <button type="button" class="btn btn-primary btn-lg">Try our crowdsourcing project</button>
            </a>
        </div>
    </div>
</div>

<iframe id="displayhere2" frameborder="0" style="display:none;"></iframe>

## Tools

Galaxy Ecology offers an extensive suite of tools designed for ecological data analysis. With hundreds of tools at your disposal, you can explore and perform a wide variety of tasks, including data manipulation, statistical analysis, ecological data retrieval, and visualization.

- **General Tools**   
These tools cover data manipulation, text processing, file conversion, sorting, filtering, and a wide range of data visualization options, including bar charts, scatterplots, heatmaps, and more.

- **Statistical Tools**  
A comprehensive set of statistical methods for data preprocessing, hypothesis testing, classification, multivariate analysis, and model-based techniques like regression and machine learning.

- **Ecological Tools**  
Galaxy Ecology provides specialized tools for ecological data, including species occurrence data retrieval, phenology analysis, acoustic monitoring, and GIS data handling.

Explore the full range of tools by using the Tools Panel on the left side of the interface. There, you’ll find an organized list of categories to help you find exactly what you need for your ecological research.

---

<script>
    document.addEventListener('DOMContentLoaded', function() {
        // Récupérer tous les liens qui déclenchent l'affichage de l'iframe
        const links = document.querySelectorAll('.show-iframe');
        
        links.forEach(link => {
            link.addEventListener('click', function(e) {
                e.preventDefault(); // Empêcher le comportement par défaut (naviguer vers un autre lien)
                
                // Récupérer l'URL cible
                const targetUrl = link.getAttribute('href');
                
                // Cacher toutes les iframes
                const iframes = document.querySelectorAll('iframe');
                iframes.forEach(iframe => iframe.style.display = 'none');
                
                // Afficher l'iframe correspondant au lien cliqué
                const targetId = link.getAttribute('data-target');
                const targetIframe = document.getElementById(targetId);
                if (targetIframe) {
                    // Mettre à jour l'URL de l'iframe avec le lien cible
                    targetIframe.src = targetUrl;  // <-- Mettre le lien dans l'iframe
                    targetIframe.style.display = 'block';
                }
            });
        });
    });
</script>