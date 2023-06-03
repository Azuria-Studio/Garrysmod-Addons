hook.Add("InitPostEntity", "Azuria:Optimisation", function()
    if AzuriaOpti.Active == true then
        print("Azuria Optimisation : Démarrage de l'optimisation")
            -- Active le test mcore (multicore) pour améliorer les performances
            RunConsoleCommand("gmod_mcore_test", "1")
            -- Active l'optimisation des calculs des cordes en utilisant des threads
            RunConsoleCommand("r_queued_ropes", "1")
            -- Active l'optimisation des calculs d'animation des os en utilisant des threads
            RunConsoleCommand("cl_threaded_bone_setup", "1")
            -- Active l'optimisation du système de rendu des feuilles des arbres en utilisant des threads
            RunConsoleCommand("cl_threaded_client_leaf_system", "1")
            -- Active l'optimisation du rendu des ombres des objets en utilisant des threads
            RunConsoleCommand("r_threaded_client_shadow_manager", "1")
            -- Définit le mode de file d'attente des commandes graphiques sur 2, ce qui améliore les performances
            RunConsoleCommand("mat_queue_mode", "2")
            -- Active l'optimisation du rendu des objets en utilisant des threads
            RunConsoleCommand("r_threaded_renderables", "1")
            -- Active l'optimisation des particules en utilisant des threads
            RunConsoleCommand("r_threaded_particles", "1")
            -- Désactive la limitation maximale des FPS
            RunConsoleCommand("fps_max", "0")
            -- Désactive l'affichage du graphique réseau
            RunConsoleCommand("net_graph", "0")
            -- Ignore les avertissements du mod sgm
            RunConsoleCommand("sgm_ignore_warnings", "1")
            -- Définit le mode de file d'attente des animations des modèles de personnages sur 1, ce qui améliore les performances
            RunConsoleCommand("studio_queue_mode", "1")
            -- Désactive le rendu des ombres provenant des sources de lumière du monde
            RunConsoleCommand("r_shadowfromworldlights", "0")
            -- Désactive l'état des ombres
            RunConsoleCommand("mat_shadowstate", "0")
            -- Définit le nombre maximum d'ombres rendues à 0, ce qui désactive les ombres
            RunConsoleCommand("r_shadowmaxrendered", "0")
            -- Désactive le rendu des ombres dans une texture
            RunConsoleCommand("r_shadowrendertotexture", "0")
            -- Définit la distance à laquelle les ombres sont visibles à 0, ce qui désactive les ombres
            RunConsoleCommand("nb_shadow_dist", "0")
            -- Active la compensation de lag pour améliorer la synchronisation des objets entre le client et le serveur
            RunConsoleCommand("cl_lagcompensation", "1")
            -- Définit le débit de données maximal en octets/seconde à 100 000, ce qui peut améliorer la fluidité du jeu
            RunConsoleCommand("rate", "100000")
            -- Désactive l'affichage des sprays des autres joueurs
            RunConsoleCommand("cl_playerspraydisable", "1")
            -- Définit la durée de vie des sprays à 0, ce qui les supprime immédiatement
            RunConsoleCommand("r_spray_lifetime", "0")
            -- Active le rendu des ombres
            RunConsoleCommand("r_shadows", "1")
                    
            /*
            -----------------------------------------------------------
            Optimisation ragdolls et physique 
            -----------------------------------------------------------
            */
                    
            -- Définit le temps de disparition des ragdolls après leur création à 1 seconde
            RunConsoleCommand("cl_ragdoll_fade_time", "1")
            -- Force la disparition des ragdolls après leur création à 1 seconde
            RunConsoleCommand("cl_ragdoll_forcefade", "1")
            -- Active la simulation physique pour les ragdolls
            RunConsoleCommand("cl_ragdoll_physics_enable", "1")
            -- Définit la vitesse de disparition des ragdolls à 1 unité par seconde
            RunConsoleCommand("g_ragdoll_fadespeed", "1")
            -- Définit la vitesse de disparition des ragdolls lorsqu'ils sortent de la vue du joueur à 1 unité par seconde
            RunConsoleCommand("g_ragdoll_lvfadespeed", "1")
            -- Définit le temps d'inactivité avant que les ragdolls ne se mettent en veille à 1 seconde
            RunConsoleCommand("ragdoll_sleepaftertime", "1")
            -- Désactive l'affichage des objets physiques dans l'environnement
            RunConsoleCommand("cl_phys_props_enable", "0")
            -- Définit le nombre maximum d'objets physiques affichés à 0, désactivant ainsi leur rendu
            RunConsoleCommand("cl_phys_props_max", "0")
            -- Définit la distance maximale à laquelle les objets physiques sont rendus à 0, désactivant ainsi leur rendu
            RunConsoleCommand("r_propsmaxdist", "0")
            -- Définit la distance de rendu des détails à 0, désactivant ainsi le rendu des détails à distance
            RunConsoleCommand("cl_detaildist", "0")
            -- Désactive l'affichage des moniteurs dans le jeu
            RunConsoleCommand("cl_drawmonitors", "0")
            -- Désactive l'éjection des douilles des armes
            RunConsoleCommand("cl_ejectbrass", "0")
            -- Définit la fréquence d'animation maximale des os à 0, désactivant ainsi la limitation
            RunConsoleCommand("cl_jiggle_bone_framerate_cutoff", "0")
            -- Force le chargement préalable des ressources du jeu
            RunConsoleCommand("cl_forcepreload", "1")
                
            /*
            -----------------------------------------------------------
            Gestion des effets de violence   
            -----------------------------------------------------------
            */
                    
            -- Désactive l'affichage du sang des ennemis blessés
            RunConsoleCommand("violence_ablood", "0")
            -- Désactive l'affichage du sang du joueur blessé
            RunConsoleCommand("violence_hblood", "0")
            -- Désactive l'affichage des morceaux de corps des ennemis tués
            RunConsoleCommand("violence_agibs", "0")
            -- Désactive l'affichage des morceaux de corps du joueur tué
            RunConsoleCommand("violence_hgibs", "0")

            /*
            -----------------------------------------------------------
            Rendu Graphique   
            -----------------------------------------------------------
            */    

            -- Active l'optimisation des particules en utilisant des threads
            RunConsoleCommand("r_threaded_particles", "1")
            -- Active l'optimisation du rendu des objets en utilisant des threads
            RunConsoleCommand("r_threaded_renderables", "1")
            -- Active l'optimisation des décals en utilisant des files d'attente
            RunConsoleCommand("r_queued_decals", "1")
            -- Active l'optimisation des calculs des cordes en utilisant des files d'attente
            RunConsoleCommand("r_queued_ropes", "1")
            -- Active l'optimisation du post-traitement en utilisant des files d'attente
            RunConsoleCommand("r_queued_post_processing", "1")
            -- Active l'optimisation du gestionnaire d'ombres des objets en utilisant des threads
            RunConsoleCommand("r_threaded_client_shadow_manager", "1")
            -- Active le clip z (élimination du rendu des objets derrière d'autres objets)
            RunConsoleCommand("mat_clipz", "1")
            -- Désactive la synchronisation forcée avec le matériel graphique
            RunConsoleCommand("mat_forcehardwaresync", "0")
            -- Active le vidage de niveau (purge des ressources graphiques entre les niveaux du jeu)
            RunConsoleCommand("mat_levelflush", "1")
            -- Active une nouvelle purge de niveau (si cette ligne est répétée accidentellement)
            RunConsoleCommand("mat_levelflush", "1")
            -- Désactive la synchronisation verticale (VSync)
            RunConsoleCommand("mat_vsync", "0")
            -- Contrôle avancé de la fonction r_fastzreject (-1 = utilise les paramètres par défaut du moteur)
            RunConsoleCommand("r_fastzreject", "-1")

            /*
            -----------------------------------------------------------
            Optimisation audio
            -----------------------------------------------------------
            */    
                    
            -- Désactive l'amélioration de la stéréo DSP (Digital Signal Processing)
            RunConsoleCommand("dsp_enhance_stereo", "0")
            -- Active l'option de ralentissement du traitement audio pour les CPU moins puissants
            RunConsoleCommand("dsp_slow_cpu", "1")
            -- Active le chargement asynchrone complet des fichiers audio
            RunConsoleCommand("snd_async_fullyasync", "1")
            -- Active la spatialisation du son en mode round-robin
            RunConsoleCommand("snd_spatialize_roundrobin", "1")

            /*
            -----------------------------------------------------------
            Suppression des hooks indésirables
            -----------------------------------------------------------
            */    

            -- Supprime le hook lié au besoin de la passe de profondeur pour l'effet Bokeh
            hook.Remove("NeedsDepthPass", "NeedsDepthPass_Bokeh")
            -- Supprime le hook lié au rendu des effets d'espace d'écran pour le texturize
            hook.Remove("RenderScreenspaceEffects", "RenderTexturize")
            -- Supprime le hook lié au rendu des effets d'espace d'écran pour le bloom
            hook.Remove("RenderScreenspaceEffects", "RenderBloom")
            -- Supprime le hook lié au rendu des effets d'espace d'écran pour le motion blur
            hook.Remove("RenderScreenspaceEffects", "RenderMotionBlur")
            -- Supprime le hook lié au pré-rendu pour le frame blending
            hook.Remove("PreRender", "PreRenderFrameBlend")
            -- Supprime le hook lié au dessin de l'overlay de recherche dans le sandbox
            hook.Remove("DrawOverlay","sandbox_search_progress")
            -- Supprime le hook lié au rendu des effets d'espace d'écran pour la modification de couleur
            hook.Remove("RenderScreenspaceEffects", "RenderColorModify")
            -- Supprime le hook lié au rendu des effets d'espace d'écran pour ToyTown
            hook.Remove("RenderScreenspaceEffects", "RenderToyTown")
            -- Supprime le hook lié au rendu des effets d'espace d'écran pour les sunbeams
            hook.Remove("RenderScreenspaceEffects", "RenderSunbeams")
            -- Supprime le hook lié au rendu des effets d'espace d'écran pour le Sobel
            hook.Remove("RenderScreenspaceEffects", "RenderSobel")
            -- Supprime le hook lié au rendu des effets d'espace d'écran pour le sharpen
            hook.Remove("RenderScreenspaceEffects", "RenderSharpen")
            -- Supprime le hook lié au rendu de l'overlay du matériau
            hook.Remove("RenderScreenspaceEffects", "RenderMaterialOverlay")
            -- Supprime le hook lié au rendu de la scène pour la stéréoscopie
            hook.Remove("RenderScene", "RenderStereoscopy")
            -- Supprime le hook lié au rendu de la scène pour le Super DoF (Depth of Field)
            hook.Remove("RenderScene", "RenderSuperDoF")
            -- Supprime le hook lié au rendu des effets d'espace d'écran pour le Bokeh
            hook.Remove("RenderScreenspaceEffects", "RenderBokeh")
            -- Supprime le hook lié au rendu des effets après le dessin (post-draw)
            hook.Remove("PostDrawEffects", "RenderWidgets")
            -- Supprime le hook lié au rendu des halos après le dessin (post-draw)
            hook.Remove("PostDrawEffects", "RenderHalos")
            -- Supprime le hook lié au rendu après le dessin (post-render)
            hook.Remove("PostRender", "RenderFrameBlend")
            -- Supprime le hook lié à la réflexion de la profondeur de champ (Depth of Field)
            hook.Remove("Think", "DOFThink")
            -- Supprime le hook lié au calcul de la vue pour le point de vue de mort (death POV)
            hook.Remove("CalcView", "rp_deathPOV")
            -- Supprime le hook lié à l'appui sur les touches du joueur pour les options du joueur
            hook.Remove("PlayerBindPress", "PlayerOptionInput")
            -- Supprime le hook lié au besoin de la passe de profondeur pour l'effet Bokeh
            hook.Remove("NeedsDepthPass", "NeedsDepthPassBokeh")
            -- Supprime le hook lié au chargement du gamemode pour la création de la barre de menu
            hook.Remove("OnGamemodeLoaded", "CreateMenuBar")
            -- Supprime le hook lié au pré-dessin des halos pour la mise en évidence des propriétés
            hook.Remove("PreDrawHalos", "PropertiesHover")
            -- Supprime le hook lié au pré-rendu pour le frame blending de type flamme (flame blend)
            hook.Remove("PreRender", "PreRenderFlameBlend")
        print("Azuria Optimisation : Fin de l'optimisation")$
    else 
        print("Azuria Optimisation : Non actif")
        return
    end 
end)

-- Code Optimisation Client Credit : Wikis 
