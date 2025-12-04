# Script to create remaining product pages

$products = @(
    @{
        filename = "ss-pipe-fittings.html"
        title = "SS Pipe Fittings"
        description = "Premium stainless steel pipe fittings for industrial piping systems"
        content = "KHETESHWAR ENTERPRISES supplies a complete range of stainless steel pipe fittings including elbows, tees, reducers, couplings, and flanges. Our SS fittings are precision-engineered to ensure leak-proof connections and long-lasting performance in demanding industrial environments."
        features = @("Leak-Proof Connections", "Corrosion Resistant", "Multiple Configurations", "High Pressure Rating")
        specs = @(
            @{grade="SS 304/304L"; size="1/8`" to 24`" NB"; standard="ASTM A403, ASTM A182"; app="General Purpose Piping"},
            @{grade="SS 316/316L"; size="1/8`" to 24`" NB"; standard="ASTM A403, ASTM A182"; app="Chemical & Marine"},
            @{grade="SS 321"; size="1/8`" to 12`" NB"; standard="ASTM A403"; app="High Temperature"}
        )
        whatsapp = "SS%20Pipe%20Fittings"
    },
    @{
        filename = "ss-sheets.html"
        title = "SS Sheets"
        description = "High-quality stainless steel sheets for various applications"
        content = "KHETESHWAR ENTERPRISES offers premium quality stainless steel sheets in various grades, finishes, and thicknesses. Our SS sheets are widely used in construction, kitchen equipment, food processing, and architectural applications for their excellent corrosion resistance and aesthetic appeal."
        features = @("Multiple Finishes", "Corrosion Resistant", "Easy to Fabricate", "Various Thicknesses")
        specs = @(
            @{grade="SS 304"; size="0.3mm to 6mm thick"; standard="ASTM A240"; app="Kitchen, Food Industry"},
            @{grade="SS 316"; size="0.3mm to 6mm thick"; standard="ASTM A240"; app="Marine, Chemical"},
            @{grade="SS 202"; size="0.3mm to 6mm thick"; standard="ASTM A240"; app="Architectural, Decorative"}
        )
        whatsapp = "SS%20Sheets"
    },
    @{
        filename = "ss-plates.html"
        title = "SS Plates"
        description = "Premium stainless steel plates for heavy-duty applications"
        content = "KHETESHWAR ENTERPRISES supplies high-grade stainless steel plates suitable for structural, pressure vessel, and heavy engineering applications. Our SS plates are available in various grades and thicknesses, offering superior strength, durability, and corrosion resistance."
        features = @("High Strength", "Thick Gauge Available", "Certified Quality", "Custom Cutting")
        specs = @(
            @{grade="SS 304/304L"; size="6mm to 100mm thick"; standard="ASTM A240"; app="Pressure Vessels, Tanks"},
            @{grade="SS 316/316L"; size="6mm to 100mm thick"; standard="ASTM A240"; app="Chemical Plants, Marine"},
            @{grade="SS 310"; size="6mm to 50mm thick"; standard="ASTM A240"; app="High Temperature Furnaces"}
        )
        whatsapp = "SS%20Plates"
    },
    @{
        filename = "ss-circles.html"
        title = "SS Circles"
        description = "Precision-cut stainless steel circles for manufacturing"
        content = "KHETESHWAR ENTERPRISES provides precision-cut stainless steel circles in various diameters and thicknesses. Our SS circles are ideal for manufacturing utensils, cookware, pressure cookers, and other circular components requiring high-quality stainless steel material."
        features = @("Precision Cut", "Smooth Edges", "Various Diameters", "Multiple Grades")
        specs = @(
            @{grade="SS 304"; size="50mm to 1000mm dia"; standard="ASTM A240"; app="Cookware, Utensils"},
            @{grade="SS 316"; size="50mm to 1000mm dia"; standard="ASTM A240"; app="Medical Equipment"},
            @{grade="SS 202"; size="50mm to 800mm dia"; standard="ASTM A240"; app="General Purpose"}
        )
        whatsapp = "SS%20Circles"
    },
    @{
        filename = "ss-rods.html"
        title = "SS Rods"
        description = "High-grade stainless steel rods for industrial use"
        content = "KHETESHWAR ENTERPRISES supplies premium stainless steel rods in round, square, and hexagonal shapes. Our SS rods are manufactured to precise specifications and are widely used in fasteners, shafts, bolts, and various machined components across multiple industries."
        features = @("Precision Ground", "Multiple Shapes", "Excellent Machinability", "Corrosion Resistant")
        specs = @(
            @{grade="SS 304"; size="3mm to 300mm dia"; standard="ASTM A276"; app="Fasteners, Shafts"},
            @{grade="SS 316"; size="3mm to 300mm dia"; standard="ASTM A276"; app="Marine Hardware"},
            @{grade="SS 303"; size="3mm to 100mm dia"; standard="ASTM A582"; app="Machined Parts"}
        )
        whatsapp = "SS%20Rods"
    }
)

foreach ($product in $products) {
    $specsHtml = ""
    foreach ($spec in $product.specs) {
        $specsHtml += @"
                                <tr>
                                    <td>$($spec.grade)</td>
                                    <td>$($spec.size)</td>
                                    <td>$($spec.standard)</td>
                                    <td>$($spec.app)</td>
                                </tr>

"@
    }

    $featuresHtml = ""
    foreach ($i in 0..3) {
        $featuresHtml += @"
                        <div class="col-sm-6">
                            <div class="d-flex align-items-center">
                                <i class="fa fa-check-circle text-primary me-2"></i>
                                <span>$($product.features[$i])</span>
                            </div>
                        </div>

"@
    }

    $html = @"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <meta charset="utf-8">
    <title>$($product.title) - KHETESHWAR ENTERPRISES</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <link href="img/KElogo.png" rel="icon">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500;600&family=Playfair+Display:wght@500;600;700&display=swap" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>
<body>
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-grow text-primary" role="status"></div>
    </div>
    <nav class="navbar navbar-expand-lg bg-white navbar-light fixed-top shadow py-lg-0 px-4 px-lg-5 wow fadeIn" data-wow-delay="0.1s">
        <a href="index.html" class="navbar-brand d-block d-lg-none">
            <h1 class="text-primary">KHETESHWAR ENTERPRISES</h1>
        </a>
        <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-between py-4 py-lg-0" id="navbarCollapse">
            <div class="navbar-nav ms-auto py-0">
                <a href="index.html" class="nav-item nav-link">Home</a>
                <a href="about.html" class="nav-item nav-link">About</a>
                <a href="service.html" class="nav-item nav-link">Services</a>
            </div>
            <a href="index.html" class="navbar-brand bg-white py-2 px-4 mx-3 d-none d-lg-block" style="width: 280px;">
                <img src="./img/KElogo.png" class="img-fluid" alt="" style=" height: 58px; margin-left: 81px;">
            </a>
            <div class="navbar-nav me-auto py-0">
                <a href="quality.html" class="nav-item nav-link">Quality</a>
                <div class="nav-item dropdown dropdown-hover" id="productsDropdown">
                    <a href="#" class="nav-link dropdown-toggle active" data-bs-toggle="dropdown" data-bs-auto-close="outside">Products</a>
                    <div class="dropdown-menu simple-products-menu shadow-sm border-0 m-0">
                        <a href="ramdev-railings.html" class="dropdown-item">Stainless Steel Railings</a>
                        <a href="ramdev-grills.html" class="dropdown-item">Stainless Steel Grills</a>
                        <a href="ss-profiles.html" class="dropdown-item">Stainless Steel Profiles</a>
                        <a href="ramdev-pvd-coating.html" class="dropdown-item">PVD Coating Services</a>
                        <a href="ramdev-doors.html" class="dropdown-item">Stainless Steel Doors</a>
                        <a href="ramdev-gates.html" class="dropdown-item">Stainless Steel Gates</a>
                        <a href="ramdev-kitchen.html" class="dropdown-item">Kitchen Items</a>
                        <a href="ramdev-chairs.html" class="dropdown-item">Steel Chairs &amp; Stools</a>
                        <a href="ramdev-tables.html" class="dropdown-item">Steel Tables</a>
                        <a href="ramdev-handles.html" class="dropdown-item">Stainless Steel Handles</a>
                        <a href="ramdev-accessories.html" class="dropdown-item">Steel Accessories</a>
                        <a href="ramdev-decorative-items.html" class="dropdown-item">Decorative Items</a>
                        <a href="ramdev-laser-cutting.html" class="dropdown-item">Laser Cutting Portfolio</a>
                        <a href="ramdev-nameplates.html" class="dropdown-item">Name Plates</a>
                        <div class="dropdown-divider"></div>
                        <a href="other-products.html" class="dropdown-item highlight">Other Products</a>
                    </div>
                </div>
                <a href="contact.html" class="nav-item nav-link">Contact Us</a>
            </div>
        </div>
    </nav>
    <div class="container-fluid hero-header py-5 mb-5" style="background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('./img/banners/partition-banner.webp'); background-size: cover; background-position: center;">
        <div class="container py-5">
            <div class="row g-5 align-items-center">
                <div class="col-lg-12 text-center">
                    <h1 class="display-4 mb-3 animated slideInDown text-white">$($product.title)</h1>
                    <nav aria-label="breadcrumb animated slideInDown">
                        <ol class="breadcrumb justify-content-center mb-0">
                            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                            <li class="breadcrumb-item"><a href="other-products.html">Other Products</a></li>
                            <li class="breadcrumb-item active text-white" aria-current="page">$($product.title)</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-5">
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                    <img class="img-fluid rounded" src="https://via.placeholder.com/600x400/0066cc/ffffff?text=$($product.title -replace ' ','+')" alt="$($product.title)">
                </div>
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.3s">
                    <h1 class="display-6 mb-4">$($product.description)</h1>
                    <p class="mb-4">$($product.content)</p>
                    <div class="row g-3 mb-4">
$featuresHtml
                    </div>
                    <a href="https://wa.me/919967202660?text=Hi%20I%20am%20interested%20in%20$($product.whatsapp)" class="btn btn-primary py-3 px-5" target="_blank">
                        <i class="fab fa-whatsapp me-2"></i>Get Quote
                    </a>
                </div>
            </div>
            <div class="row mt-5">
                <div class="col-12 wow fadeInUp" data-wow-delay="0.1s">
                    <h3 class="mb-4">Specifications & Grades</h3>
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead class="bg-light">
                                <tr>
                                    <th>Grade</th>
                                    <th>Size Range</th>
                                    <th>Standard</th>
                                    <th>Applications</th>
                                </tr>
                            </thead>
                            <tbody>
$specsHtml
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid footer position-relative bg-dark text-white-50 mt-5 py-5 px-4 px-lg-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="row g-5 py-5">
            <div class="col-lg-6 pe-lg-5">
                <a href="index.html" class="navbar-brand">
                    <h3 class="text-primary mb-3" style="font-size: 1.75rem; font-weight: 600;">KHETESHWAR ENTERPRISES</h3>
                </a>
                <p>KHETESHWAR ENTERPRISES is a leading manufacturer and supplier of premium stainless steel products including Handles, Railings, Safety Door Grill, Interior Fabrication, and provides all kinds of PVD & PU coatings for metal surfaces.</p>
                <p><i class="fa fa-map-marker-alt me-2"></i>5th Floor, Office No. 502, Plot No. 119/121, Rajmudra, Bhandari Street, Durgadevi Udyan, Kumbharwada, Mumbai - 400004</p>
                <p><i class="fa fa-phone-alt me-2"></i>9967202660</p>
                <p><i class="fa fa-phone-alt me-2"></i>8291050903</p>
                <p><i class="fa fa-envelope me-2"></i>babulalpurohit3@gmail.com</p>
                <div class="d-flex justify-content-start mt-4">
                    <a class="btn btn-square btn-outline-primary rounded-circle me-2" href="https://x.com/"><i class="fab fa-x-twitter"></i></a>
                    <a class="btn btn-square btn-outline-primary rounded-circle me-2" href="https://www.facebook.com/"><i class="fab fa-facebook-f"></i></a>
                    <a class="btn btn-square btn-outline-primary rounded-circle me-2" href="https://in.linkedin.com/"><i class="fab fa-linkedin-in"></i></a>
                    <a class="btn btn-square btn-outline-primary rounded-circle me-2" href="https://www.instagram.com/"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
            <div class="col-lg-6 ps-lg-5">
                <div class="row g-5">
                    <div class="col-sm-6">
                        <h4 class="text-light mb-4">Quick Links</h4>
                        <a class="btn btn-link" href="about.html">About Us</a>
                        <a class="btn btn-link" href="service.html">Our Services</a>
                        <a class="btn btn-link" href="quality.html">Quality</a>
                        <a class="btn btn-link" href="contact.html">Contact Us</a>
                    </div>
                    <div class="col-sm-6">
                        <h4 class="text-light mb-4">Products</h4>
                        <a class="btn btn-link" href="ramdev-grills.html">Stainless Steel Grills</a>
                        <a class="btn btn-link" href="ss-profiles.html">Stainless Steel Profiles</a>
                        <a class="btn btn-link" href="ramdev-handles.html">Stainless Steel Handles</a>
                        <a class="btn btn-link" href="ramdev-railings.html">Stainless Steel Railings</a>
                        <a class="btn btn-link" href="other-products.html">Other Products</a>
                    </div>
                    <form action="https://api.web3forms.com/submit" method="POST">
                        <input type="hidden" name="access_key" value="f0b1004f-2bd5-4924-b688-ff222c0cffb2">
                        <input type="hidden" name="subject" value="New Quote Request Subscription">
                        <div class="w-100">
                            <div class="input-group">
                                <input type="email" name="email" class="form-control border-0 bg-secondary" style="padding: 20px 30px; color: white;" placeholder="Your Email Address" required>
                                <button type="submit" class="btn btn-primary px-4">Subscribe</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid bg-dark text-white border-top border-secondary px-0">
        <div class="d-flex flex-column flex-md-row justify-content-between">
            <div class="py-4 px-5 text-center text-md-start">
                <p class="mb-0">&copy; <a class="text-primary" href="#">2025</a> All right reserved KHETESHWAR ENTERPRISES</p>
            </div>
            <div class="py-4 px-5 bg-secondary footer-shape position-relative text-center text-md-end">
                <p class="mb-0">Designed by <span class="text-primary fw-bold">Manmohan Printers</span></p>
            </div>
        </div>
    </div>
    <a href="javascript:void(0);" onclick="window.open('https://wa.me/919967202660', '_blank')" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top" style="color: white; background: green; border: 2px solid green;" title="Chat on WhatsApp">
        <i class="bi bi-whatsapp"></i>
    </a>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
"@

    Set-Content -Path $product.filename -Value $html -Encoding UTF8
    Write-Host "Created: $($product.filename)"
}

Write-Host "`nAll product pages created successfully!"
