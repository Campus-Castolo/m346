# Lernziele M346

Inhalt und Lernziele von diesem Ma­nu­skript:
## Cloud-init

- Sie kennen die Grundelemente von [YAML](https://spacelift.io/blog/yaml) und erkennen diese in [Cloud-init](https://cloud-init.io/) Dateien.<br>
YAML ist eine strukturierte Datenformatierungssprache, während Cloud-init ein Werkzeug ist, das hauptsächlich in Cloud-Umgebungen verwendet wird, um die Initialisierung von virtuellen Instanzen zu steuern. YAML verwendet Einrückungen, Listen und Schlüssel-Wert-Paare zur Darstellung von Daten. In Cloud-init-Dateien werden diese Elemente verwendet, um Konfigurationsanweisungen für virtuelle Maschinen bereitzustellen.

- Sie können die Vorteile von Cloud-init erläutern.<br>
Cloud-init bietet eine einfache Möglichkeit, benutzerdefinierte Konfigurationen und Skripte in virtuellen Instanzen zu integrieren. Dies ermöglicht die automatische und konsistente Einrichtung von Instanzen, was Zeit spart und menschliche Fehler reduziert.

- Sie kennen die wichtigsten Elemente von Cloud-init und können diese auch anwenden.<br>
Zu den wichtigen Elementen von Cloud-init gehören Benutzerdaten (UserData), die es ermöglichen, benutzerdefinierte Skripte oder Konfigurationen bei der Instanzenerstellung auszuführen, sowie Metadaten (MetaData), die Informationen zur Instanz bereitstellen, wie z.B. Hostname oder Netzwerkkonfiguration.

- Sie finden sich mit der offiziellen Referenz zurecht und können ein Element  nachschlagen oder neue Elemente entdecken und anwenden.<br>
Die offizielle Referenz von Cloud-init enthält eine Dokumentation zu den verfügbaren Konfigurationsoptionen und Modulen. Sie können darin nachschlagen, wie bestimmte Konfigurationen durchgeführt werden oder neue Konfigurationselemente entdecken.

- Sie können eine virtuelle Instanz mit Cloud-init installieren.<br>
Die offizielle Referenz von Cloud-init enthält eine Dokumentation zu den verfügbaren Konfigurationsoptionen und Modulen. Sie können darin nachschlagen, wie bestimmte Konfigurationen durchgeführt werden oder neue Konfigurationselemente entdecken.

- Sie kennen den Begriff "[Infrastructure As Code](https://docs.aws.amazon.com/whitepapers/latest/introduction-devops-aws/infrastructure-as-code.html)" und können ihn erklären.<br>
"Infrastructure As Code" (IaC) bezieht sich auf die Praxis, Infrastrukturressourcen wie Server, Netzwerke und Speicher mithilfe von Code zu verwalten. Anstelle manueller Konfigurationsschritte wird die Infrastruktur in codebasierten Vorlagen beschrieben, die automatisch bereitgestellt und verwaltet werden können.

- Sie können Produkte nennen, die "Infrastructure As Code" anbieten (mit Hilfe des Internets).<br>
Beispiele für Produkte, die IaC ermöglichen, sind Terraform, Ansible, Chef und Puppet. Diese Tools bieten die Möglichkeit, Infrastrukturressourcen in deklarativer Form zu beschreiben und automatisch bereitzustellen.

## Virtualisierung

- Sie können den Begriff der "Virtualisierung" erläutern.<br>
Virtualisierung ist die Technologie, die es ermöglicht, physische Ressourcen wie Server, Speicher und Netzwerke in virtuelle Instanzen umzuwandeln. Dadurch können mehrere Betriebssysteme und Anwendungen auf einer einzelnen physischen Hardware ausgeführt werden.

- Sie können grob erklären welche Rolle ein "[Hypervisor](https://www.redhat.com/en/topics/virtualization/what-is-a-hypervisor)" in der Virtualisierung spielt.<br>
Virtualisierung ist die Technologie, die es ermöglicht, physische Ressourcen wie Server, Speicher und Netzwerke in virtuelle Instanzen umzuwandeln. Dadurch können mehrere Betriebssysteme und Anwendungen auf einer einzelnen physischen Hardware ausgeführt werden.

- Sie kennen den Unterschied zwischen Typ 1 und Typ 2 Hypervisors und können den auch erklären.<br>
Virtualisierung ist die Technologie, die es ermöglicht, physische Ressourcen wie Server, Speicher und Netzwerke in virtuelle Instanzen umzuwandeln. Dadurch können mehrere Betriebssysteme und Anwendungen auf einer einzelnen physischen Hardware ausgeführt werden.

- Sie können den Begriff "[Hyperscaler](https://www.redhat.com/en/topics/virtualization/what-is-a-hypervisor)" erklären im Zusammenhang mit Cloud-Systemen.<br>
Ein "Hyperscaler" ist ein Anbieter von Cloud-Infrastruktur, der über immense Rechenleistung und Ressourcen verfügt und diese in großem Maßstab für Cloud-Dienste zur Verfügung stellt. Beispiele für Hyperscaler sind Amazon Web Services (AWS), Microsoft Azure und Google Cloud Platform (GCP).

- Sie kennen Schichten von Cloud-Systemen.<br>
Cloud-Systeme bestehen typischerweise aus den folgenden Schichten: Infrastrukturschicht (Hardware, Netzwerke), Plattformschicht (Betriebssysteme, Middleware) und Anwendungsschicht (Anwendungen, Dienste).

## Betriebsmodelle

- Sie kennen die drei Betriebsmodelle und können Sie erklären.<br>
Die drei Betriebsmodelle sind Infrastructure as a Service (IaaS), Platform as a Service (PaaS) und Software as a Service (SaaS).

- Sie kennen die Unterteilung zwischen Public und Private Cloud und können Sie erklären.<br>
Eine Public Cloud wird von einem Drittanbieter betrieben und bietet Dienste für die breite Öffentlichkeit an. Eine Private Cloud wird von einer einzelnen Organisation betrieben und bietet Dienste intern für die eigene Organisation an.

- Sie können Beispiele zu den Betriebsmodellen nennen.<br>
IaaS: Amazon EC2, PaaS: Google App Engine, SaaS: Microsoft Office 365.

## Servicemodelle

- Sie kennen die vier Servicemodelle und können Sie erklären.<br>
Die vier Servicemodelle sind Infrastructure as a Service (IaaS), Platform as a Service (PaaS), Software as a Service (SaaS) und Function as a Service (FaaS).

- Sie wissen welches Servicemodell auf einem anderen aufbaut (z.B. PaaS auf IaaS).<br>
PaaS baut auf IaaS auf, indem es eine Plattform über den zugrunde liegenden Infrastrukturschichten bereitstellt. SaaS baut auf PaaS auf und bietet vollständige Anwendungen über die Plattformschicht an.

- Sie können Beispielprodukte für die Servicemodelle nennen (mit Hilfe des Internets)<br>
IaaS: Amazon EC2, PaaS: Heroku, SaaS: Salesforce, FaaS: AWS Lambda.

## (Cloud-) Migrationsmodelle

- Sie kennen die Begriffe der Migrationsmodellen.<br>
Beispiele für Migrationsmodelle sind "Lift and Shift" (direkte Migration), Replatforming (Anpassung an die Cloud), Refactoring (Neugestaltung von Anwendungen) und Rearchitecting (Neugestaltung von Architekturen).

- Sie kennen die Zielplattform der Migrationsmodellen.<br>
Die Zielplattformen können Public Cloud-Infrastrukturen wie AWS, Azure oder GCP sein.

- Bei einem gegebenen Szenario können Sie für ein Migrationsmodell argumentieren.<br>
Je nach den bestehenden Anwendungen, den Zielen der Migration und den verfügbaren Ressourcen kann ein bestimmtes Migrationsmodell besser geeignet sein als andere.


## Speichermodelle

- Sie kennen die vier Speichermodelle<br>
Vier Speichermodelle der cloud sind Block Storage, Object Storage, File Storage un In-Memory Storage.

- Sie wissen für welchen Einsatz die Speichermodelle sinnvoll Verwendung finden.<br>
Block Storage eignet sich für Datenbanken, Object Storage für skalierbare Datenspeicherung, File Storage für gemeinsamen Dateizugriff und In-Memory Storage für schnellen Datenzugriff.

- Sie können Beispiele zur Benutzung der Speichermodelle geben.<br>
Block Storage: Amazon EBS, Object Storage: Amazon S3, File Storage: NFS, In-Memory Storage: Redis.

- Sie kennen den Unterschied zwischen persistentem und flüchtigem Speicher und können diesen erklären, speziell im Zusammenhang mit virtuellen Instanzen.<br>
Persistenter Speicher behält Daten auch nach dem Ausschalten bei, während flüchtiger Speicher seine Daten verliert, wenn die Stromversorgung unterbrochen wird. In virtuellen Instanzen sind persistente Speicher in der Regel Festplatten, während flüchtiger Speicher den RAM darstellt.

- Sie kennen den Unterschied der Lese- und Schreibgeschwindigkeiten der Speichermodelle.<br>
Speichermodelle wie In-Memory Storage bieten schnellere Lese- und Schreibzugriffe im Vergleich zu herkömmlichen Festplatten oder Cloud-Speicherlösungen.


