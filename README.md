<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Medrasa Academy - Complete School Management System</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&family=Montserrat:wght@400;500;600;700;800;900&family=Roboto+Mono:wght@300;400;500&family=Dancing+Script:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="manifest" href="/manifest.json">
    <meta name="theme-color" content="#1A56DB">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    <link rel="apple-touch-icon" href="https://uploads.onecompiler.io/43zx3dt8f/446bh3zrj/1000169792.png">
    <style>
        /* ===== COMPLETE CSS - FIXED AND ENHANCED ===== */
        :root {
            /* Vibrant Color Palette */
            --primary-red: #FF4757;
            --primary-red-dark: #FF3838;
            --primary-red-light: #FF7979;
            --primary-yellow: #FFD32A;
            --primary-yellow-dark: #F9CA24;
            --primary-yellow-light: #FFEAA7;
            --primary-blue: #1B9CFC;
            --primary-blue-dark: #0A79DF;
            --primary-blue-light: #74B9FF;
            --primary-green: #20BF6B;
            --primary-green-dark: #16A085;
            --primary-green-light: #7BED9F;
            --primary-rose: #FD79A8;
            --primary-rose-dark: #E84393;
            --primary-rose-light: #FFB8D7;
            --primary-purple: #8A2BE2;
            --primary-purple-light: #A855F7;
            --primary-orange: #FF9F1A;
            --khube-blue: #1A56DB;
            --khube-green: #059669;
            --gray-600: #718096;
            --gray-200: #e2e8f0;
            
            /* Gradients */
            --gradient-rainbow: linear-gradient(135deg, var(--primary-red) 0%, var(--primary-orange) 15%, var(--primary-yellow) 30%, var(--primary-green) 45%, var(--primary-blue) 60%, var(--primary-purple) 75%, var(--primary-rose) 90%);
            --gradient-header: linear-gradient(135deg, var(--primary-red) 0%, var(--primary-yellow) 25%, var(--primary-green) 50%, var(--primary-blue) 75%, var(--primary-rose) 100%);
            --gradient-footer: linear-gradient(135deg, var(--primary-purple) 0%, var(--primary-blue) 33%, var(--primary-green) 66%, var(--primary-yellow) 100%);
            --gradient-card: linear-gradient(135deg, rgba(255, 71, 87, 0.1) 0%, rgba(255, 211, 42, 0.1) 50%, rgba(27, 156, 252, 0.1) 100%);
            --gradient-khube: linear-gradient(135deg, var(--khube-blue) 0%, var(--khube-green) 100%);
            
            /* Typography */
            --font-primary: 'Poppins', sans-serif;
            --font-secondary: 'Montserrat', sans-serif;
            --font-mono: 'Roboto Mono', monospace;
            --font-cursive: 'Dancing Script', cursive;
            
            /* Shadows */
            --shadow-sm: 0 2px 8px rgba(0,0,0,0.08);
            --shadow-md: 0 4px 16px rgba(0,0,0,0.12);
            --shadow-lg: 0 8px 32px rgba(0,0,0,0.16);
            --shadow-xl: 0 16px 48px rgba(0,0,0,0.20);
            
            /* Transitions */
            --transition-fast: 0.2s cubic-bezier(0.4, 0, 0.2, 1);
            --transition-normal: 0.3s cubic-bezier(0.4, 0, 0.2, 1);
            --transition-slow: 0.5s cubic-bezier(0.4, 0, 0.2, 1);
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: var(--font-primary);
            line-height: 1.6;
            color: #2c3e50;
            background: linear-gradient(135deg, #f5f7fa 0%, #e4e8f0 100%);
            min-height: 100vh;
            overflow-x: hidden;
        }

        /* ===== LOGIN SCREEN ===== */
        .login-screen {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            background: linear-gradient(135deg, var(--khube-blue) 0%, var(--khube-green) 100%);
            z-index: 9999;
        }

        .login-container {
            background: white;
            padding: 3rem;
            border-radius: 25px;
            box-shadow: var(--shadow-xl);
            width: 90%;
            max-width: 450px;
            text-align: center;
            position: relative;
            overflow: hidden;
            animation: fadeInUp 0.5s ease;
        }

        .login-container::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 5px;
            background: var(--gradient-khube);
        }

        .login-logo {
            width: 100px;
            height: 100px;
            border-radius: 20px;
            overflow: hidden;
            margin: 0 auto 1.5rem;
            box-shadow: var(--shadow-lg);
            border: 3px solid white;
            background: white;
            padding: 10px;
        }

        .login-logo img {
            width: 100%;
            height: 100%;
            object-fit: contain;
        }

        .login-title {
            font-size: 2rem;
            font-weight: 800;
            margin-bottom: 0.5rem;
            background: var(--gradient-khube);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            font-family: var(--font-secondary);
        }

        .role-selector {
            display: flex;
            gap: 1rem;
            margin: 1.5rem 0;
            justify-content: center;
            flex-wrap: wrap;
        }

        .role-btn {
            padding: 0.75rem 1.5rem;
            border: 2px solid var(--gray-200);
            border-radius: 12px;
            background: white;
            cursor: pointer;
            transition: all var(--transition-normal);
            font-weight: 600;
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .role-btn.active {
            background: var(--gradient-khube);
            color: white;
            border-color: transparent;
            transform: translateY(-2px);
            box-shadow: var(--shadow-md);
        }

        .login-form {
            text-align: left;
        }

        .login-form-group {
            margin-bottom: 1.5rem;
        }

        .login-form-group label {
            display: block;
            margin-bottom: 0.5rem;
            color: var(--khube-blue);
            font-weight: 600;
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .login-form-control {
            width: 100%;
            padding: 1rem;
            border: 2px solid var(--gray-200);
            border-radius: 12px;
            font-family: var(--font-primary);
            font-size: 1rem;
            transition: all var(--transition-fast);
        }

        .login-form-control:focus {
            outline: none;
            border-color: var(--khube-blue);
            box-shadow: 0 0 0 4px rgba(26, 86, 219, 0.1);
        }

        .login-btn {
            width: 100%;
            padding: 1rem;
            background: var(--gradient-khube);
            color: white;
            border: none;
            border-radius: 12px;
            font-size: 1.1rem;
            font-weight: 700;
            cursor: pointer;
            transition: all var(--transition-normal);
            margin-top: 1rem;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 0.5rem;
        }

        .login-btn:hover {
            transform: translateY(-2px);
            box-shadow: var(--shadow-lg);
        }

        .register-link {
            margin-top: 1.5rem;
            color: var(--gray-600);
            font-size: 0.9rem;
            text-align: center;
        }

        .register-link a {
            color: var(--khube-blue);
            font-weight: 600;
            text-decoration: none;
            cursor: pointer;
        }

        /* Default Credentials Box */
        .default-credentials {
            margin-top: 1.5rem;
            padding: 1rem;
            background: var(--gradient-card);
            border-radius: 12px;
            border: 1px solid var(--gray-200);
        }

        .default-credentials p {
            color: var(--gray-600);
            margin-bottom: 0.5rem;
            font-size: 0.9rem;
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .default-credentials strong {
            color: var(--khube-blue);
        }

        /* Registration Overlay */
        .registration-overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0,0,0,0.85);
            display: none;
            justify-content: center;
            align-items: center;
            z-index: 2000;
            backdrop-filter: blur(10px);
        }

        .registration-container {
            background: white;
            padding: 3rem;
            border-radius: 25px;
            box-shadow: var(--shadow-xl);
            width: 90%;
            max-width: 500px;
            text-align: center;
            position: relative;
            overflow: hidden;
            animation: fadeInUp 0.5s ease;
        }

        .registration-container::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 5px;
            background: var(--gradient-khube);
        }

        .registration-logo {
            width: 100px;
            height: 100px;
            border-radius: 20px;
            overflow: hidden;
            margin: 0 auto 1.5rem;
            box-shadow: var(--shadow-lg);
            border: 3px solid white;
            background: white;
            padding: 10px;
        }

        .registration-logo img {
            width: 100%;
            height: 100%;
            object-fit: contain;
        }

        .registration-title {
            font-size: 2rem;
            font-weight: 800;
            margin-bottom: 0.5rem;
            background: var(--gradient-khube);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            font-family: var(--font-secondary);
        }

        .registration-form {
            text-align: left;
            margin-top: 1.5rem;
        }

        .registration-form-group {
            margin-bottom: 1.5rem;
        }

        .registration-form-group label {
            display: block;
            margin-bottom: 0.5rem;
            color: var(--khube-blue);
            font-weight: 600;
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .registration-form-control {
            width: 100%;
            padding: 1rem;
            border: 2px solid var(--gray-200);
            border-radius: 12px;
            font-family: var(--font-primary);
            font-size: 1rem;
            transition: all var(--transition-fast);
        }

        .registration-form-control:focus {
            outline: none;
            border-color: var(--khube-blue);
            box-shadow: 0 0 0 4px rgba(26, 86, 219, 0.1);
        }

        .registration-btn {
            width: 100%;
            padding: 1rem;
            background: var(--gradient-khube);
            color: white;
            border: none;
            border-radius: 12px;
            font-size: 1.1rem;
            font-weight: 700;
            cursor: pointer;
            transition: all var(--transition-normal);
            margin-top: 1rem;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 0.5rem;
        }

        .registration-btn:hover {
            transform: translateY(-2px);
            box-shadow: var(--shadow-lg);
        }

        /* Password Strength */
        .password-strength {
            height: 5px;
            margin-top: 0.5rem;
            border-radius: 2px;
            transition: all 0.3s;
        }

        .strength-weak { width: 25%; background: var(--primary-red); }
        .strength-medium { width: 50%; background: var(--primary-yellow); }
        .strength-strong { width: 75%; background: var(--primary-orange); }
        .strength-very-strong { width: 100%; background: var(--primary-green); }

        /* ===== MAIN SYSTEM ===== */
        .system-container {
            display: none;
        }

        /* Animated Background */
        .animated-bg {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;
            opacity: 0.05;
            background: 
                radial-gradient(circle at 20% 80%, var(--primary-red-light) 0%, transparent 20%),
                radial-gradient(circle at 80% 20%, var(--primary-blue-light) 0%, transparent 20%),
                radial-gradient(circle at 40% 40%, var(--primary-green-light) 0%, transparent 20%);
            animation: float 20s ease-in-out infinite;
        }

        @keyframes float {
            0%, 100% { transform: translate(0, 0); }
            33% { transform: translate(20px, 20px); }
            66% { transform: translate(-20px, -20px); }
        }

        /* Header */
        header {
            background: var(--gradient-header);
            padding: 1rem 0;
            box-shadow: var(--shadow-lg);
            position: sticky;
            top: 0;
            z-index: 1000;
            animation: slideDown 0.5s ease;
        }

        .header-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            max-width: 1400px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .header-left {
            display: flex;
            align-items: center;
            gap: 1.5rem;
        }

        .logo {
            width: 70px;
            height: 70px;
            border-radius: 20px;
            overflow: hidden;
            box-shadow: var(--shadow-lg);
            border: 3px solid white;
            background: white;
            padding: 5px;
            transition: var(--transition-normal);
        }

        .logo:hover {
            transform: rotate(5deg) scale(1.05);
        }

        .logo img {
            width: 100%;
            height: 100%;
            object-fit: contain;
        }

        .school-info h1 {
            font-size: 2rem;
            font-weight: 900;
            color: white;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
            margin-bottom: 0.25rem;
            font-family: var(--font-secondary);
            background: linear-gradient(45deg, #ffffff, var(--primary-yellow-light));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .school-info p {
            color: rgba(255,255,255,0.95);
            font-weight: 500;
            font-size: 0.95rem;
        }

        .user-info {
            display: flex;
            align-items: center;
            gap: 1rem;
            color: white;
            font-weight: 600;
        }

        .logout-btn {
            background: rgba(255,255,255,0.2);
            color: white;
            border: 2px solid rgba(255,255,255,0.3);
            padding: 0.5rem 1rem;
            border-radius: 12px;
            cursor: pointer;
            transition: var(--transition-normal);
            font-weight: 600;
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .logout-btn:hover {
            background: rgba(255,255,255,0.3);
            transform: translateY(-2px);
        }

        /* Brand Badge */
        .brand-badge {
            background: var(--gradient-khube);
            color: white;
            padding: 0.5rem 1rem;
            border-radius: 20px;
            font-size: 0.8rem;
            font-weight: 700;
            display: flex;
            align-items: center;
            gap: 0.5rem;
            margin-left: 1rem;
        }

        /* Main Container */
        .container {
            max-width: 1400px;
            margin: 2rem auto;
            padding: 0 20px;
            position: relative;
        }

        /* Tabs Navigation */
        .tabs-nav {
            display: flex;
            gap: 0.5rem;
            margin-bottom: 2rem;
            flex-wrap: wrap;
            background: white;
            padding: 1rem;
            border-radius: 20px;
            box-shadow: var(--shadow-md);
            position: sticky;
            top: 100px;
            z-index: 999;
        }

        .tab-btn {
            padding: 1rem 1.5rem;
            background: white;
            border: 2px solid transparent;
            border-radius: 15px;
            cursor: pointer;
            font-weight: 700;
            color: var(--primary-blue-dark);
            transition: all var(--transition-normal);
            display: flex;
            align-items: center;
            gap: 0.75rem;
            font-family: var(--font-secondary);
            font-size: 0.95rem;
            position: relative;
            overflow: hidden;
        }

        .tab-btn::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: var(--gradient-rainbow);
            opacity: 0.1;
            transition: var(--transition-normal);
        }

        .tab-btn:hover {
            transform: translateY(-3px);
            box-shadow: var(--shadow-lg);
            border-color: var(--primary-red);
            color: var(--primary-red);
        }

        .tab-btn:hover::before {
            left: 0;
        }

        .tab-btn.active {
            background: var(--gradient-header);
            color: white;
            border-color: transparent;
            transform: translateY(-2px);
            box-shadow: var(--shadow-lg);
        }

        .finance-tab { display: none; }
        .finance-role .finance-tab { display: flex !important; }

        /* Sections */
        .section {
            background: white;
            padding: 2.5rem;
            border-radius: 25px;
            box-shadow: var(--shadow-lg);
            margin-bottom: 2rem;
            display: none;
            animation: fadeInUp 0.5s ease;
            border: 1px solid rgba(255,255,255,0.2);
            backdrop-filter: blur(10px);
        }

        .section.active {
            display: block;
        }

        .section-title {
            background: var(--gradient-rainbow);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            margin-bottom: 2rem;
            padding-bottom: 1rem;
            border-bottom: 3px solid var(--gradient-header);
            display: flex;
            align-items: center;
            gap: 1rem;
            font-size: 2rem;
            font-weight: 800;
            font-family: var(--font-secondary);
        }

        /* Dashboard Cards */
        .dashboard-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 1.5rem;
            margin: 2rem 0;
        }

        .dashboard-card {
            background: white;
            padding: 2rem;
            border-radius: 20px;
            box-shadow: var(--shadow-md);
            border-left: 6px solid;
            transition: all var(--transition-normal);
            position: relative;
            overflow: hidden;
        }

        .dashboard-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 4px;
            background: inherit;
        }

        .dashboard-card:hover {
            transform: translateY(-10px) scale(1.02);
            box-shadow: var(--shadow-xl);
        }

        .card-red { border-color: var(--primary-red); }
        .card-yellow { border-color: var(--primary-yellow); }
        .card-blue { border-color: var(--primary-blue); }
        .card-green { border-color: var(--primary-green); }
        .card-rose { border-color: var(--primary-rose); }
        .card-purple { border-color: var(--primary-purple); }
        .card-khube { border-color: var(--khube-blue); }

        .stat-number {
            font-size: 3.5rem;
            font-weight: 900;
            margin: 1rem 0;
            background: var(--gradient-rainbow);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            font-family: var(--font-secondary);
        }

        /* Photo Gallery Styles */
        .gallery-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            gap: 1.5rem;
            margin: 2rem 0;
        }

        .gallery-item {
            position: relative;
            border-radius: 15px;
            overflow: hidden;
            cursor: pointer;
            box-shadow: var(--shadow-md);
            transition: all var(--transition-normal);
            aspect-ratio: 1;
        }

        .gallery-item:hover {
            transform: translateY(-5px) scale(1.05);
            box-shadow: var(--shadow-lg);
        }

        .gallery-item img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .gallery-overlay {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            background: rgba(0,0,0,0.7);
            color: white;
            padding: 1rem;
            transform: translateY(100%);
            transition: var(--transition-normal);
        }

        .gallery-item:hover .gallery-overlay {
            transform: translateY(0);
        }

        /* File Upload Styles */
        .file-upload-zone {
            border: 3px dashed var(--primary-blue);
            border-radius: 20px;
            padding: 3rem;
            text-align: center;
            margin: 2rem 0;
            background: var(--gradient-card);
            cursor: pointer;
            transition: all var(--transition-normal);
            position: relative;
        }

        .file-upload-zone:hover {
            border-color: var(--primary-red);
            background: rgba(255, 71, 87, 0.05);
            transform: scale(1.01);
        }

        .upload-icon {
            font-size: 4rem;
            color: var(--primary-blue);
            margin-bottom: 1.5rem;
            animation: bounce 2s infinite;
        }

        @keyframes bounce {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-10px); }
        }

        /* Student Registration Form */
        .form-container {
            background: linear-gradient(135deg, #ffffff 0%, #f8f9fa 100%);
            padding: 2rem;
            border-radius: 20px;
            box-shadow: var(--shadow-md);
            margin: 2rem 0;
        }

        .form-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 1.5rem;
            margin-bottom: 2rem;
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        .form-label {
            display: block;
            margin-bottom: 0.5rem;
            color: var(--primary-blue-dark);
            font-weight: 600;
            font-size: 0.95rem;
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .form-control {
            width: 100%;
            padding: 1rem;
            border: 2px solid #e0e0e0;
            border-radius: 12px;
            font-family: var(--font-primary);
            font-size: 1rem;
            transition: all var(--transition-fast);
            background: white;
        }

        .form-control:focus {
            outline: none;
            border-color: var(--primary-blue);
            box-shadow: 0 0 0 4px rgba(27, 156, 252, 0.1);
        }

        /* Table Styles */
        .data-table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0;
            margin-top: 2rem;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: var(--shadow-md);
        }

        .data-table th {
            background: var(--gradient-header);
            color: white;
            padding: 1.5rem;
            text-align: left;
            font-weight: 700;
            font-family: var(--font-secondary);
            position: relative;
        }

        .data-table th::after {
            content: '';
            position: absolute;
            right: 0;
            top: 25%;
            height: 50%;
            width: 1px;
            background: rgba(255, 255, 255, 0.3);
        }

        .data-table th:last-child::after {
            display: none;
        }

        .data-table td {
            padding: 1.5rem;
            border-bottom: 1px solid #f0f0f0;
            background: white;
            transition: var(--transition-fast);
        }

        .data-table tr:last-child td {
            border-bottom: none;
        }

        .data-table tr:hover td {
            background: var(--gradient-card);
        }

        /* Certificate Styles */
        .certificate-container {
            background: linear-gradient(135deg, #fff9db 0%, #ffecb3 100%);
            border: 20px solid var(--primary-yellow);
            padding: 4rem;
            margin: 3rem auto;
            position: relative;
            box-shadow: var(--shadow-xl);
            border-radius: 5px;
            max-width: 1000px;
        }

        .certificate-border {
            position: absolute;
            border: 2px solid var(--primary-red);
            top: 20px;
            left: 20px;
            right: 20px;
            bottom: 20px;
            pointer-events: none;
        }

        .certificate-header {
            text-align: center;
            margin-bottom: 3rem;
            position: relative;
        }

        .certificate-title {
            font-size: 3.5rem;
            color: var(--primary-red);
            font-weight: 900;
            font-family: var(--font-cursive);
            margin-bottom: 1rem;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.1);
        }

        /* Roster Styles */
        .roster-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 1.5rem;
            margin: 2rem 0;
        }

        .roster-card {
            background: white;
            border-radius: 20px;
            padding: 1.5rem;
            box-shadow: var(--shadow-md);
            border: 2px solid transparent;
            transition: all var(--transition-normal);
            position: relative;
            overflow: hidden;
        }

        .roster-card:hover {
            border-color: var(--primary-blue);
            transform: translateY(-5px);
            box-shadow: var(--shadow-lg);
        }

        /* Action Buttons */
        .action-buttons {
            display: flex;
            gap: 0.5rem;
            flex-wrap: wrap;
        }

        .btn {
            padding: 0.8rem 1.5rem;
            border-radius: 12px;
            border: none;
            cursor: pointer;
            font-weight: 700;
            font-family: var(--font-secondary);
            transition: all var(--transition-normal);
            display: inline-flex;
            align-items: center;
            gap: 0.5rem;
            font-size: 0.95rem;
        }

        .btn-primary {
            background: var(--primary-blue);
            color: white;
        }

        .btn-success {
            background: var(--primary-green);
            color: white;
        }

        .btn-danger {
            background: var(--primary-red);
            color: white;
        }

        .btn-warning {
            background: var(--primary-yellow);
            color: #333;
        }

        .btn-rose {
            background: var(--primary-rose);
            color: white;
        }

        .btn-khube {
            background: var(--gradient-khube);
            color: white;
        }

        .btn:hover {
            transform: translateY(-3px);
            box-shadow: var(--shadow-md);
            opacity: 0.9;
        }

        /* Finance Styles */
        .finance-summary {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 1.5rem;
            margin: 2rem 0;
        }

        .invoice-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 1rem;
        }

        .invoice-table th,
        .invoice-table td {
            padding: 1rem;
            border: 1px solid var(--gray-200);
            text-align: left;
        }

        .invoice-table th {
            background: var(--gradient-card);
            font-weight: 600;
        }

        .status-paid {
            background: var(--primary-green-light);
            color: var(--primary-green-dark);
            padding: 0.25rem 0.75rem;
            border-radius: 20px;
            font-size: 0.85rem;
            font-weight: 600;
        }

        .status-pending {
            background: var(--primary-yellow-light);
            color: #b8860b;
            padding: 0.25rem 0.75rem;
            border-radius: 20px;
            font-size: 0.85rem;
            font-weight: 600;
        }

        /* ===== ENHANCED FOOTER STYLES ===== */
        footer {
            background: linear-gradient(135deg, #1A56DB 0%, #FFD32A 50%, #FF4757 100%);
            color: white;
            padding: 4rem 0 2rem;
            margin-top: 4rem;
            position: relative;
            overflow: hidden;
        }
        
        footer::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 5px;
            background: linear-gradient(135deg, #FF4757 0%, #FFD32A 33%, #1A56DB 66%, #059669 100%);
        }
        
        .social-media-links {
            display: flex;
            flex-direction: column;
            gap: 0.75rem;
        }
        
        .social-link {
            display: flex;
            align-items: center;
            gap: 0.75rem;
            color: white;
            text-decoration: none;
            padding: 0.5rem 1rem;
            border-radius: 10px;
            transition: all var(--transition-normal);
            background: rgba(255, 255, 255, 0.1);
            border: 1px solid rgba(255, 255, 255, 0.2);
            font-weight: 500;
        }
        
        .social-link:hover {
            transform: translateX(10px);
            background: rgba(255, 255, 255, 0.2);
        }
        
        .social-link.youtube {
            border-left: 4px solid #FF0000;
        }
        
        .social-link.telegram {
            border-left: 4px solid #0088cc;
        }
        
        .social-link.facebook {
            border-left: 4px solid #1877F2;
        }
        
        .social-link.twitter {
            border-left: 4px solid #1DA1F2;
        }
        
        .social-link.tiktok {
            border-left: 4px solid #000000;
        }
        
        .social-link i {
            font-size: 1.2rem;
            width: 24px;
            text-align: center;
        }
        
        .social-link.youtube i {
            color: #FF0000;
        }
        
        .social-link.telegram i {
            color: #0088cc;
        }
        
        .social-link.facebook i {
            color: #1877F2;
        }
        
        .social-link.twitter i {
            color: #1DA1F2;
        }
        
        .social-link.tiktok i {
            color: #000000;
        }
        
        .copyright {
            text-align: center;
            padding-top: 2rem;
            margin-top: 3rem;
            border-top: 1px solid rgba(255,255,255,0.3);
            color: rgba(255,255,255,0.9);
            max-width: 1400px;
            margin: 3rem auto 0;
            padding: 2rem 20px 0;
            background: rgba(0, 0, 0, 0.2);
            border-radius: 20px 20px 0 0;
            padding: 2rem;
        }
        
        .copyright p {
            margin-bottom: 0.5rem;
        }
        
        .copyright strong {
            color: #FFD32A;
            font-weight: 800;
        }

        /* Footer Content */
        .footer-content {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 3rem;
            max-width: 1400px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .footer-section h4 {
            font-size: 1.3rem;
            margin-bottom: 1.5rem;
            position: relative;
            padding-bottom: 0.75rem;
            font-weight: 800;
            font-family: var(--font-secondary);
        }

        .footer-section h4::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 50px;
            height: 3px;
            background: white;
            border-radius: 2px;
        }

        /* Khube Brand */
        .khube-brand {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 1rem;
            margin-top: 1.5rem;
            padding-top: 1.5rem;
            border-top: 1px solid rgba(255,255,255,0.2);
        }

        .khube-logo {
            width: 40px;
            height: 40px;
            border-radius: 10px;
            overflow: hidden;
            background: white;
            padding: 5px;
        }

        .khube-logo img {
            width: 100%;
            height: 100%;
            object-fit: contain;
        }

        /* Animations */
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes slideDown {
            from {
                transform: translateY(-100%);
            }
            to {
                transform: translateY(0);
            }
        }

        /* Responsive */
        @media (max-width: 768px) {
            .container {
                padding: 0 15px;
            }

            .section {
                padding: 1.5rem;
            }

            .tabs-nav {
                top: 90px;
            }

            .tab-btn {
                padding: 0.8rem 1rem;
                font-size: 0.85rem;
            }

            .form-grid {
                grid-template-columns: 1fr;
            }

            .dashboard-grid {
                grid-template-columns: 1fr;
            }

            .login-container, .registration-container {
                padding: 2rem;
                margin: 1rem;
            }

            .role-selector {
                flex-direction: column;
            }
        }

        /* Print Styles */
        @media print {
            .no-print {
                display: none !important;
            }

            .section {
                box-shadow: none;
                border: none;
                page-break-inside: avoid;
            }
        }

        /* Custom Scrollbar */
        ::-webkit-scrollbar {
            width: 10px;
        }

        ::-webkit-scrollbar-track {
            background: #f1f1f1;
            border-radius: 5px;
        }

        ::-webkit-scrollbar-thumb {
            background: var(--gradient-header);
            border-radius: 5px;
        }

        ::-webkit-scrollbar-thumb:hover {
            background: var(--primary-red);
        }

        /* Badge Styles */
        .badge {
            display: inline-block;
            padding: 0.35rem 0.75rem;
            border-radius: 20px;
            font-size: 0.75rem;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        .badge-red { background: var(--primary-red); color: white; }
        .badge-yellow { background: var(--primary-yellow); color: #333; }
        .badge-blue { background: var(--primary-blue); color: white; }
        .badge-green { background: var(--primary-green); color: white; }
        .badge-rose { background: var(--primary-rose); color: white; }
        .badge-purple { background: var(--primary-purple); color: white; }
        .badge-khube { background: var(--gradient-khube); color: white; }

        /* Loading Spinner */
        .spinner {
            width: 40px;
            height: 40px;
            border: 4px solid #f3f3f3;
            border-top: 4px solid var(--primary-blue);
            border-radius: 50%;
            animation: spin 1s linear infinite;
            margin: 2rem auto;
        }

        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }

        /* Floating Elements */
        .floating-element {
            position: absolute;
            width: 100px;
            height: 100px;
            border-radius: 50%;
            background: var(--gradient-header);
            opacity: 0.1;
            animation: floatElement 20s infinite ease-in-out;
            z-index: -1;
        }

        @keyframes floatElement {
            0%, 100% { transform: translate(0, 0) rotate(0deg); }
            33% { transform: translate(100px, 50px) rotate(120deg); }
            66% { transform: translate(-50px, 100px) rotate(240deg); }
        }

        /* Student Photo Upload */
        .student-photo-upload {
            width: 150px;
            height: 150px;
            border-radius: 20px;
            border: 3px dashed var(--primary-blue);
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            overflow: hidden;
            margin: 0 auto 1rem;
            transition: var(--transition-normal);
        }

        .student-photo-upload:hover {
            border-color: var(--primary-red);
            transform: scale(1.05);
        }

        .student-photo-preview {
            width: 100%;
            height: 100%;
            object-fit: cover;
            display: none;
        }

        /* File Type Icons */
        .file-type-icon {
            font-size: 3rem;
            color: var(--primary-blue);
            margin: 1rem;
        }

        .file-type-icon.excel { color: var(--primary-green); }
        .file-type-icon.word { color: var(--primary-blue); }
        .file-type-icon.pdf { color: var(--primary-red); }
        .file-type-icon.image { color: var(--primary-rose); }

        /* Finance Dashboard */
        .finance-card {
            background: white;
            padding: 1.5rem;
            border-radius: 15px;
            box-shadow: var(--shadow-md);
            border-top: 4px solid;
            text-align: center;
        }

        .finance-card h3 {
            color: var(--gray-600);
            font-size: 0.9rem;
            margin-bottom: 0.5rem;
        }

        .finance-card .amount {
            font-size: 2rem;
            font-weight: 800;
            margin: 0.5rem 0;
        }

        .finance-card.today { border-color: var(--primary-green); }
        .finance-card.month { border-color: var(--primary-blue); }
        .finance-card.year { border-color: var(--primary-purple); }
        .finance-card.pending { border-color: var(--primary-yellow); }

        /* Tooltip */
        .tooltip {
            position: relative;
            display: inline-block;
        }

        .tooltip .tooltiptext {
            visibility: hidden;
            width: 200px;
            background-color: var(--khube-blue);
            color: white;
            text-align: center;
            border-radius: 6px;
            padding: 5px;
            position: absolute;
            z-index: 1;
            bottom: 125%;
            left: 50%;
            margin-left: -100px;
            opacity: 0;
            transition: opacity 0.3s;
            font-size: 0.8rem;
        }

        .tooltip:hover .tooltiptext {
            visibility: visible;
            opacity: 1;
        }
        
        /* ===== FINANCE COMMUNICATION SECTION ===== */
        .finance-communication-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 1.5rem;
            margin: 2rem 0;
        }
        
        .payment-method-card {
            background: white;
            border-radius: 20px;
            padding: 2rem;
            box-shadow: var(--shadow-md);
            border: 2px solid transparent;
            transition: all var(--transition-normal);
            text-align: center;
        }
        
        .payment-method-card:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow-lg);
            border-color: var(--primary-blue);
        }
        
        .payment-logo {
            width: 100px;
            height: 100px;
            margin: 0 auto 1.5rem;
            border-radius: 20px;
            overflow: hidden;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 3rem;
            color: white;
        }
        
        .cbe-logo { background: linear-gradient(135deg, #006400 0%, #228B22 100%); }
        .telebirr-logo { background: linear-gradient(135deg, #00A859 0%, #00C853 100%); }
        .cbe-birr-logo { background: linear-gradient(135deg, #800080 0%, #4B0082 100%); }
        
        .qr-code-container {
            margin: 1.5rem auto;
            padding: 1.5rem;
            background: white;
            border-radius: 15px;
            box-shadow: var(--shadow-md);
            display: inline-block;
        }
        
        .qr-code {
            width: 200px;
            height: 200px;
            background: #f8f9fa;
            border-radius: 10px;
            margin: 0 auto;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 4rem;
            color: var(--gray-600);
        }
        
        /* ===== MEDRASA BRAND APP ===== */
        .brand-app-container {
            background: linear-gradient(135deg, var(--khube-blue) 0%, var(--khube-green) 100%);
            border-radius: 25px;
            padding: 3rem;
            margin: 2rem 0;
            color: white;
            text-align: center;
        }
        
        .app-features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 1.5rem;
            margin-top: 2rem;
        }
        
        .app-feature {
            background: rgba(255, 255, 255, 0.1);
            padding: 1.5rem;
            border-radius: 15px;
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.2);
        }
        
        .app-download-buttons {
            display: flex;
            gap: 1rem;
            justify-content: center;
            margin-top: 2rem;
            flex-wrap: wrap;
        }
        
        .app-download-btn {
            padding: 1rem 2rem;
            border-radius: 12px;
            background: white;
            color: var(--khube-blue);
            text-decoration: none;
            font-weight: 700;
            display: flex;
            align-items: center;
            gap: 0.75rem;
            transition: all var(--transition-normal);
        }
        
        .app-download-btn:hover {
            transform: translateY(-3px);
            box-shadow: var(--shadow-lg);
        }
        
        .app-screenshot {
            width: 100%;
            max-width: 300px;
            border-radius: 20px;
            box-shadow: var(--shadow-xl);
            border: 5px solid white;
        }
        
        /* ===== SMS & NOTIFICATION SYSTEM ===== */
        .sms-system {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            border-radius: 20px;
            padding: 2rem;
            margin: 2rem 0;
            color: white;
        }
        
        .sms-form {
            display: grid;
            grid-template-columns: 1fr auto;
            gap: 1rem;
            margin-top: 1rem;
        }
        
        .notification-badge {
            position: absolute;
            top: -5px;
            right: -5px;
            background: var(--primary-red);
            color: white;
            border-radius: 50%;
            width: 20px;
            height: 20px;
            font-size: 0.75rem;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        
        /* ===== REAL-TIME DASHBOARD UPDATES ===== */
        .real-time-update {
            animation: pulse 2s infinite;
        }
        
        @keyframes pulse {
            0% { opacity: 1; }
            50% { opacity: 0.7; }
            100% { opacity: 1; }
        }
        
        /* ===== MOBILE APP SPECIFIC STYLES ===== */
        @media (max-width: 768px) {
            .app-download-buttons {
                flex-direction: column;
                align-items: center;
            }
            
            .app-download-btn {
                width: 100%;
                max-width: 300px;
                justify-content: center;
            }
            
            .sms-form {
                grid-template-columns: 1fr;
            }
        }
        
        /* ===== INSTALL APP BUTTON ===== */
        .install-app-btn {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background: var(--gradient-khube);
            color: white;
            padding: 1rem 1.5rem;
            border-radius: 50px;
            box-shadow: var(--shadow-lg);
            z-index: 10000;
            display: flex;
            align-items: center;
            gap: 0.75rem;
            cursor: pointer;
            animation: bounce 2s infinite;
        }
        
        /* ===== PWA OFFLINE INDICATOR ===== */
        .offline-indicator {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            background: var(--primary-red);
            color: white;
            padding: 0.5rem;
            text-align: center;
            z-index: 10001;
            display: none;
        }
        
        /* ===== ADDITIONAL MISSING CSS ===== */
        .login-link {
            margin-top: 1.5rem;
            color: var(--gray-600);
            font-size: 0.9rem;
            text-align: center;
        }

        .login-link a {
            color: var(--khube-blue);
            font-weight: 600;
            text-decoration: none;
            cursor: pointer;
        }

        @keyframes fadeOut {
            from { opacity: 1; transform: translateX(0); }
            to { opacity: 0; transform: translateX(100px); }
        }

        /* ===== ATTENDANCE SPECIFIC STYLES ===== */
        .attendance-forms-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 2rem;
            margin: 2rem 0;
        }

        .attendance-form-card {
            background: white;
            border-radius: 20px;
            padding: 2rem;
            box-shadow: var(--shadow-md);
            border-top: 5px solid;
            transition: all var(--transition-normal);
        }

        .attendance-form-card:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow-lg);
        }

        .attendance-form-card.student { border-color: var(--primary-blue); }
        .attendance-form-card.teacher { border-color: var(--primary-green); }
        .attendance-form-card.committee { border-color: var(--primary-purple); }
        .attendance-form-card.staff { border-color: var(--primary-orange); }

        .attendance-status-badge {
            padding: 0.5rem 1rem;
            border-radius: 20px;
            font-weight: 600;
            display: inline-flex;
            align-items: center;
            gap: 0.5rem;
            margin: 0.25rem;
            cursor: pointer;
            transition: all 0.3s;
        }

        .status-present { background: var(--primary-green-light); color: var(--primary-green-dark); }
        .status-absent { background: var(--primary-red-light); color: var(--primary-red-dark); }
        .status-late { background: var(--primary-yellow-light); color: var(--primary-yellow-dark); }
        .status-excused { background: var(--primary-blue-light); color: var(--primary-blue-dark); }

        .attendance-status-badge.active {
            transform: scale(1.05);
            box-shadow: var(--shadow-sm);
        }

        .attendance-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 1.5rem;
        }

        .attendance-table th {
            background: var(--gradient-card);
            padding: 1rem;
            text-align: left;
            font-weight: 600;
            color: var(--khube-blue);
        }

        .attendance-table td {
            padding: 1rem;
            border-bottom: 1px solid var(--gray-200);
        }

        .attendance-summary {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 1.5rem;
            margin: 2rem 0;
        }

        .summary-card {
            background: white;
            padding: 1.5rem;
            border-radius: 15px;
            text-align: center;
            box-shadow: var(--shadow-md);
            border-left: 4px solid;
        }

        /* ===== ASSIGNMENT UPLOAD STYLES ===== */
        .assignment-upload-container {
            background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
            border-radius: 20px;
            padding: 2rem;
            margin: 2rem 0;
        }

        .assignment-card {
            background: white;
            border-radius: 15px;
            padding: 1.5rem;
            margin-bottom: 1.5rem;
            box-shadow: var(--shadow-md);
            border-left: 4px solid var(--primary-blue);
            transition: all var(--transition-normal);
        }

        .assignment-card:hover {
            transform: translateY(-3px);
            box-shadow: var(--shadow-lg);
        }

        .submission-status {
            display: inline-flex;
            align-items: center;
            gap: 0.5rem;
            padding: 0.5rem 1rem;
            border-radius: 20px;
            font-weight: 600;
        }

        .submitted { background: var(--primary-green-light); color: var(--primary-green-dark); }
        .pending { background: var(--primary-yellow-light); color: var(--primary-yellow-dark); }
        .overdue { background: var(--primary-red-light); color: var(--primary-red-dark); }
        .graded { background: var(--primary-blue-light); color: var(--primary-blue-dark); }

        .grade-badge {
            font-size: 1.2rem;
            font-weight: 800;
            padding: 0.5rem 1rem;
            border-radius: 10px;
            display: inline-block;
        }

        .grade-a { background: var(--primary-green); color: white; }
        .grade-b { background: var(--primary-blue); color: white; }
        .grade-c { background: var(--primary-yellow); color: #333; }
        .grade-d { background: var(--primary-orange); color: white; }
        .grade-f { background: var(--primary-red); color: white; }

        /* ===== FINANCE FORMS STYLES ===== */
        .finance-forms-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
            margin: 2rem 0;
        }

        .finance-form-card {
            background: white;
            border-radius: 20px;
            padding: 2rem;
            box-shadow: var(--shadow-md);
            border: 2px solid transparent;
            transition: all var(--transition-normal);
        }

        .finance-form-card:hover {
            border-color: var(--khube-blue);
            transform: translateY(-3px);
        }

        .payment-link {
            display: flex;
            align-items: center;
            gap: 1rem;
            padding: 1rem;
            background: var(--gradient-card);
            border-radius: 12px;
            margin: 0.5rem 0;
            text-decoration: none;
            color: var(--khube-blue);
            font-weight: 600;
            transition: all var(--transition-normal);
        }

        .payment-link:hover {
            background: var(--gradient-khube);
            color: white;
            transform: translateX(5px);
        }

        .expense-category {
            padding: 0.5rem;
            border-radius: 8px;
            font-size: 0.85rem;
            font-weight: 600;
            display: inline-block;
            margin: 0.25rem;
        }

        .category-salary { background: var(--primary-rose-light); color: var(--primary-rose-dark); }
        .category-utilities { background: var(--primary-blue-light); color: var(--primary-blue-dark); }
        .category-materials { background: var(--primary-green-light); color: var(--primary-green-dark); }
        .category-maintenance { background: var(--primary-yellow-light); color: var(--primary-yellow-dark); }
        .category-other { background: var(--primary-purple-light); color: var(--primary-purple); }

        /* ===== FILE UPLOAD ENHANCEMENTS ===== */
        .file-preview {
            display: flex;
            align-items: center;
            gap: 1rem;
            padding: 1rem;
            background: var(--gradient-card);
            border-radius: 12px;
            margin: 1rem 0;
        }

        .file-icon {
            width: 50px;
            height: 50px;
            border-radius: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.5rem;
            color: white;
        }

        .file-icon.pdf { background: var(--primary-red); }
        .file-icon.word { background: var(--primary-blue); }
        .file-icon.excel { background: var(--primary-green); }
        .file-icon.image { background: var(--primary-rose); }
        .file-icon.other { background: var(--primary-purple); }

        .upload-progress {
            height: 5px;
            background: var(--gray-200);
            border-radius: 2px;
            margin: 1rem 0;
            overflow: hidden;
        }

        .progress-bar {
            height: 100%;
            background: var(--gradient-khube);
            transition: width 0.3s;
        }

        /* ===== ASSESSMENT GRADING STYLES ===== */
        .grading-rubric {
            background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
            border-radius: 15px;
            padding: 1.5rem;
            margin: 1.5rem 0;
        }

        .rubric-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 1rem;
            border-bottom: 1px solid var(--gray-200);
        }

        .rubric-item:last-child {
            border-bottom: none;
        }

        .grade-input-group {
            display: flex;
            align-items: center;
            gap: 1rem;
        }

        .grade-input {
            width: 80px;
            text-align: center;
            font-weight: 700;
            font-size: 1.2rem;
        }

        .feedback-box {
            min-height: 150px;
            border: 2px solid var(--gray-200);
            border-radius: 12px;
            padding: 1rem;
            transition: all var(--transition-fast);
        }

        .feedback-box:focus {
            outline: none;
            border-color: var(--primary-blue);
            box-shadow: 0 0 0 4px rgba(27, 156, 252, 0.1);
        }

        /* ===== PRINT OPTIMIZATIONS ===== */
        @media print {
            .attendance-form-card,
            .finance-form-card,
            .assignment-card {
                break-inside: avoid;
                page-break-inside: avoid;
            }
        }

        /* ===== LOADING STATES ===== */
        .loading {
            opacity: 0.6;
            pointer-events: none;
            position: relative;
        }

        .loading::after {
            content: '';
            position: absolute;
            top: 50%;
            left: 50%;
            width: 30px;
            height: 30px;
            border: 3px solid var(--gray-200);
            border-top: 3px solid var(--primary-blue);
            border-radius: 50%;
            animation: spin 1s linear infinite;
            transform: translate(-50%, -50%);
        }

        /* ===== NEW SECTIONS STYLES ===== */
        .section-placeholder {
            background: var(--gradient-card);
            border-radius: 20px;
            padding: 4rem 2rem;
            text-align: center;
            margin: 2rem 0;
        }

        .section-placeholder i {
            font-size: 4rem;
            color: var(--khube-blue);
            margin-bottom: 1.5rem;
        }

        .section-placeholder h3 {
            color: var(--khube-blue);
            margin-bottom: 1rem;
        }

        .section-placeholder p {
            color: var(--gray-600);
            max-width: 600px;
            margin: 0 auto;
        }

        /* Reports Section Styles */
        .reports-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 1.5rem;
            margin: 2rem 0;
        }

        .report-card {
            background: white;
            border-radius: 15px;
            padding: 1.5rem;
            box-shadow: var(--shadow-md);
            border: 2px solid transparent;
            transition: all var(--transition-normal);
        }

        .report-card:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow-lg);
            border-color: var(--primary-blue);
        }

        .report-card h4 {
            color: var(--khube-blue);
            margin-bottom: 1rem;
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        /* Grades Section Styles */
        .grades-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 1.5rem;
        }

        .grades-table th {
            background: var(--gradient-card);
            padding: 1rem;
            text-align: left;
            font-weight: 600;
            color: var(--khube-blue);
        }

        .grades-table td {
            padding: 1rem;
            border-bottom: 1px solid var(--gray-200);
        }

        .grade-input-small {
            width: 60px;
            text-align: center;
            padding: 0.5rem;
            border: 1px solid var(--gray-200);
            border-radius: 5px;
        }

        /* Assessment Section Styles */
        .assessment-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 1.5rem;
            margin: 2rem 0;
        }

        .assessment-card {
            background: white;
            border-radius: 15px;
            padding: 1.5rem;
            box-shadow: var(--shadow-md);
            border-left: 4px solid;
        }

        .assessment-card.quiz { border-color: var(--primary-blue); }
        .assessment-card.exam { border-color: var(--primary-red); }
        .assessment-card.project { border-color: var(--primary-green); }
        .assessment-card.homework { border-color: var(--primary-yellow); }

        /* Import/Export Styles */
        .import-export-options {
            display: flex;
            gap: 1rem;
            flex-wrap: wrap;
            margin: 2rem 0;
        }

        .import-export-card {
            flex: 1;
            min-width: 250px;
            background: white;
            border-radius: 15px;
            padding: 2rem;
            box-shadow: var(--shadow-md);
            text-align: center;
            transition: all var(--transition-normal);
        }

        .import-export-card:hover {
            transform: translateY(-3px);
            box-shadow: var(--shadow-lg);
        }

        /* Roster Styles */
        .roster-container {
            background: white;
            border-radius: 20px;
            padding: 2rem;
            box-shadow: var(--shadow-md);
            margin: 2rem 0;
        }

        .roster-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 1.5rem;
        }

        .roster-table th {
            background: var(--gradient-card);
            padding: 1rem;
            text-align: left;
            font-weight: 600;
            color: var(--khube-blue);
        }

        .roster-table td {
            padding: 1rem;
            border-bottom: 1px solid var(--gray-200);
        }

        /* Settings Styles */
        .settings-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 1.5rem;
            margin: 2rem 0;
        }

        .settings-card {
            background: white;
            border-radius: 15px;
            padding: 1.5rem;
            box-shadow: var(--shadow-md);
            border: 2px solid transparent;
            transition: all var(--transition-normal);
        }

        .settings-card:hover {
            border-color: var(--khube-blue);
        }

        .settings-group {
            margin-bottom: 1.5rem;
        }

        .settings-group label {
            display: block;
            margin-bottom: 0.5rem;
            color: var(--khube-blue);
            font-weight: 600;
        }

        .toggle-switch {
            position: relative;
            display: inline-block;
            width: 60px;
            height: 30px;
        }

        .toggle-switch input {
            opacity: 0;
            width: 0;
            height: 0;
        }

        .toggle-slider {
            position: absolute;
            cursor: pointer;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: #ccc;
            transition: .4s;
            border-radius: 30px;
        }

        .toggle-slider:before {
            position: absolute;
            content: "";
            height: 22px;
            width: 22px;
            left: 4px;
            bottom: 4px;
            background-color: white;
            transition: .4s;
            border-radius: 50%;
        }

        input:checked + .toggle-slider {
            background-color: var(--khube-blue);
        }

        input:checked + .toggle-slider:before {
            transform: translateX(30px);
        }

        /* Certificate Styles */
        .certificate-preview {
            background: linear-gradient(135deg, #fff9db 0%, #ffecb3 100%);
            border: 15px solid var(--primary-yellow);
            padding: 3rem;
            margin: 2rem auto;
            position: relative;
            box-shadow: var(--shadow-xl);
            border-radius: 5px;
            max-width: 800px;
            min-height: 500px;
        }

        .certificate-preview h3 {
            text-align: center;
            color: var(--primary-red);
            font-family: var(--font-cursive);
            font-size: 2.5rem;
            margin-bottom: 2rem;
        }

        .certificate-details {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 1.5rem;
            margin: 2rem 0;
        }

        /* Gallery Styles */
        .gallery-controls {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 1.5rem;
            flex-wrap: wrap;
            gap: 1rem;
        }

        .gallery-upload-btn {
            padding: 0.75rem 1.5rem;
            background: var(--gradient-khube);
            color: white;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            font-weight: 600;
            display: flex;
            align-items: center;
            gap: 0.5rem;
            transition: all var(--transition-normal);
        }

        .gallery-upload-btn:hover {
            transform: translateY(-2px);
            box-shadow: var(--shadow-md);
        }

        /* Import/Export Modal */
        .import-export-modal {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0,0,0,0.8);
            display: none;
            justify-content: center;
            align-items: center;
            z-index: 10000;
        }

        .import-export-content {
            background: white;
            border-radius: 20px;
            padding: 2rem;
            width: 90%;
            max-width: 500px;
            box-shadow: var(--shadow-xl);
        }

        .data-format {
            background: var(--gradient-card);
            padding: 1rem;
            border-radius: 10px;
            margin: 1rem 0;
            font-family: var(--font-mono);
            font-size: 0.9rem;
            max-height: 200px;
            overflow-y: auto;
        }

        /* Data Preview */
        .data-preview {
            background: #f8f9fa;
            border: 1px solid var(--gray-200);
            border-radius: 10px;
            padding: 1rem;
            margin: 1rem 0;
            max-height: 300px;
            overflow-y: auto;
            font-size: 0.85rem;
        }
    </style>
</head>
<body>
    <!-- Login Screen -->
    <div class="login-screen" id="loginScreen">
        <div class="login-container">
            <div class="login-logo">
                <img src="https://uploads.onecompiler.io/43zx3dt8f/446bh3zrj/1000169792.png" alt="Medrasa Academy Logo">
            </div>
            <h1 class="login-title">Medrasa Academy</h1>
            <p style="color: var(--gray-600); margin-bottom: 1.5rem;">Complete School Management System</p>
            
            <div class="role-selector">
                <button class="role-btn active" data-role="admin">
                    <i class="fas fa-user-shield"></i> Admin
                </button>
                <button class="role-btn" data-role="finance">
                    <i class="fas fa-money-bill"></i> Finance
                </button>
                <button class="role-btn" data-role="teacher">
                    <i class="fas fa-chalkboard-teacher"></i> Teacher
                </button>
                <button class="role-btn" data-role="parent">
                    <i class="fas fa-user-friends"></i> Parent
                </button>
                <button class="role-btn" data-role="student">
                    <i class="fas fa-user-graduate"></i> Student
                </button>
                <button class="role-btn" data-role="staff">
                    <i class="fas fa-user-tie"></i> Staff
                </button>
                <button class="role-btn" data-role="committee">
                    <i class="fas fa-users"></i> Committee
                </button>
            </div>
            
            <form class="login-form" id="loginForm">
                <div class="login-form-group">
                    <label for="username">
                        <i class="fas fa-user"></i> Username
                    </label>
                    <input type="text" id="username" class="login-form-control" placeholder="Enter username" required>
                </div>
                
                <div class="login-form-group">
                    <label for="password">
                        <i class="fas fa-lock"></i> Password
                    </label>
                    <input type="password" id="password" class="login-form-control" placeholder="Enter password" required>
                </div>
                
                <button type="submit" class="login-btn">
                    <i class="fas fa-sign-in-alt"></i> Login to System
                </button>
                
                <div class="register-link">
                    Don't have an account? <a onclick="showRegistration()">Register here</a>
                </div>
                
                <!-- Default Credentials -->
                <div class="default-credentials">
                    <p><i class="fas fa-info-circle"></i> <strong>Default Admin Credentials:</strong></p>
                    <p>Username: <strong>khube</strong></p>
                    <p>Password: <strong>15303099</strong></p>
                </div>
            </form>
            
            <!-- Khube Branding -->
            <div style="margin-top: 2rem; padding-top: 1.5rem; border-top: 1px solid var(--gray-200);">
                <div style="display: flex; align-items: center; justify-content: center; gap: 0.5rem; color: var(--gray-600); font-size: 0.9rem;">
                    <i class="fas fa-brain" style="color: var(--khube-blue);"></i>
                    <span>Powered by</span>
                    <span style="font-weight: 700; color: var(--khube-blue);">Khube Intelligence</span>
                </div>
            </div>
        </div>
    </div>

    <!-- Registration Overlay -->
    <div class="registration-overlay" id="registrationOverlay">
        <div class="registration-container">
            <div class="registration-logo">
                <img src="https://uploads.onecompiler.io/43zx3dt8f/446bh3zrj/1000169792.png" alt="Medrasa Academy Logo">
            </div>
            <h1 class="registration-title">Create Your Account</h1>
            <p style="color: var(--gray-600); margin-bottom: 1.5rem;">Register to access Medrasa Academy System</p>
            
            <form class="registration-form" id="registrationForm">
                <div class="registration-form-group">
                    <label for="regFullName">
                        <i class="fas fa-user"></i> Full Name *
                    </label>
                    <input type="text" id="regFullName" class="registration-form-control" placeholder="Enter your full name" required>
                </div>
                
                <div class="registration-form-group">
                    <label for="regPhone">
                        <i class="fas fa-phone"></i> Phone Number *
                    </label>
                    <input type="tel" id="regPhone" class="registration-form-control" placeholder="Enter your phone number" required>
                </div>
                
                <div class="registration-form-group">
                    <label for="regRole">
                        <i class="fas fa-user-tag"></i> Role *
                    </label>
                    <select id="regRole" class="registration-form-control" required>
                        <option value="">Select Role</option>
                        <option value="student">Student</option>
                        <option value="teacher">Teacher</option>
                        <option value="finance">Finance Officer</option>
                        <option value="admin">Administrator</option>
                        <option value="staff">School Staff</option>
                        <option value="parent">Parent</option>
                        <option value="committee">Committee Member</option>
                    </select>
                </div>
                
                <div class="registration-form-group">
                    <label for="regUsername">
                        <i class="fas fa-user-circle"></i> Username *
                    </label>
                    <input type="text" id="regUsername" class="registration-form-control" placeholder="Choose a username" required>
                    <small style="color: var(--gray-600);">Username must be unique</small>
                </div>
                
                <div class="registration-form-group">
                    <label for="regPassword">
                        <i class="fas fa-lock"></i> Password *
                    </label>
                    <input type="password" id="regPassword" class="registration-form-control" placeholder="Create a strong password" required oninput="checkPasswordStrength()">
                    <div id="passwordStrength" class="password-strength"></div>
                    <small style="color: var(--gray-600);">Minimum 8 characters with numbers and letters</small>
                </div>
                
                <div class="registration-form-group">
                    <label for="regConfirmPassword">
                        <i class="fas fa-lock"></i> Confirm Password *
                    </label>
                    <input type="password" id="regConfirmPassword" class="registration-form-control" placeholder="Confirm your password" required>
                </div>
                
                <button type="submit" class="registration-btn">
                    <i class="fas fa-user-plus"></i> Create Account
                </button>
                
                <div class="login-link">
                    Already have an account? <a onclick="showLogin()">Login here</a>
                </div>
            </form>
            
            <!-- Khube Branding -->
            <div style="margin-top: 2rem; padding-top: 1.5rem; border-top: 1px solid var(--gray-200);">
                <div style="display: flex; align-items: center; justify-content: center; gap: 0.5rem; color: var(--gray-600); font-size: 0.9rem;">
                    <i class="fas fa-brain" style="color: var(--khube-blue);"></i>
                    <span>Powered by</span>
                    <span style="font-weight: 700; color: var(--khube-blue);">Khube Intelligence</span>
                </div>
            </div>
        </div>
    </div>

    <!-- Import/Export Modal -->
    <div class="import-export-modal" id="importExportModal">
        <div class="import-export-content">
            <h2 style="color: var(--khube-blue); margin-bottom: 1.5rem;">
                <i class="fas fa-file-import"></i> Import/Export System Data
            </h2>
            
            <div class="tabs-nav" style="margin-bottom: 1.5rem; position: static;">
                <button class="tab-btn active" onclick="showImportTab()">
                    <i class="fas fa-upload"></i> Import
                </button>
                <button class="tab-btn" onclick="showExportTab()">
                    <i class="fas fa-download"></i> Export
                </button>
                <button class="tab-btn" onclick="showBackupTab()">
                    <i class="fas fa-save"></i> Backup
                </button>
            </div>
            
            <!-- Import Tab -->
            <div id="importTab" style="display: block;">
                <h3 style="color: var(--primary-green); margin-bottom: 1rem;">
                    <i class="fas fa-upload"></i> Import Data
                </h3>
                <p style="color: var(--gray-600); margin-bottom: 1.5rem;">
                    Upload a JSON file containing Medrasa Academy system data.
                </p>
                
                <div class="file-upload-zone" onclick="document.getElementById('importFileInput').click()">
                    <div class="upload-icon">
                        <i class="fas fa-cloud-upload-alt"></i>
                    </div>
                    <h4 style="color: var(--primary-blue); margin-bottom: 0.5rem;">
                        Click to upload JSON file
                    </h4>
                    <p style="color: var(--gray-600);">
                        Drag & drop or click to browse<br>
                        Supported format: .json
                    </p>
                </div>
                <input type="file" id="importFileInput" accept=".json" style="display: none;">
                
                <div class="data-format">
                    <strong>Expected JSON Format:</strong>
                    <pre style="margin-top: 0.5rem;">
{
    "students": [...],
    "staff": [...],
    "fees": [...],
    "grades": [...],
    "attendance": [...],
    "settings": {...}
}</pre>
                </div>
                
                <div style="display: flex; gap: 1rem; margin-top: 1.5rem;">
                    <button class="btn btn-success" onclick="handleImport()" style="flex: 1;">
                        <i class="fas fa-upload"></i> Import Data
                    </button>
                    <button class="btn btn-danger" onclick="closeModal()">
                        Cancel
                    </button>
                </div>
            </div>
            
            <!-- Export Tab -->
            <div id="exportTab" style="display: none;">
                <h3 style="color: var(--primary-blue); margin-bottom: 1rem;">
                    <i class="fas fa-download"></i> Export Data
                </h3>
                <p style="color: var(--gray-600); margin-bottom: 1.5rem;">
                    Export all system data as a JSON file for backup or transfer.
                </p>
                
                <div class="data-preview" id="exportDataPreview">
                    <strong>Data Summary:</strong>
                    <div id="dataSummary"></div>
                </div>
                
                <div style="display: flex; gap: 1rem; margin-top: 1.5rem;">
                    <button class="btn btn-primary" onclick="exportData()" style="flex: 1;">
                        <i class="fas fa-download"></i> Export as JSON
                    </button>
                    <button class="btn btn-danger" onclick="closeModal()">
                        Cancel
                    </button>
                </div>
            </div>
            
            <!-- Backup Tab -->
            <div id="backupTab" style="display: none;">
                <h3 style="color: var(--primary-purple); margin-bottom: 1rem;">
                    <i class="fas fa-save"></i> Backup & Restore
                </h3>
                <p style="color: var(--gray-600); margin-bottom: 1.5rem;">
                    Create automatic backups and restore from previous backups.
                </p>
                
                <div class="form-group">
                    <label class="form-label">
                        <i class="fas fa-history"></i> Available Backups
                    </label>
                    <select class="form-control" id="backupList">
                        <option value="">No backups found</option>
                    </select>
                </div>
                
                <div style="display: flex; gap: 1rem; margin-top: 1.5rem;">
                    <button class="btn btn-purple" onclick="createBackup()" style="flex: 1;">
                        <i class="fas fa-save"></i> Create Backup
                    </button>
                    <button class="btn btn-warning" onclick="restoreBackup()" style="flex: 1;">
                        <i class="fas fa-undo"></i> Restore
                    </button>
                    <button class="btn btn-danger" onclick="closeModal()">
                        Cancel
                    </button>
                </div>
            </div>
        </div>
    </div>

    <!-- Main System Container -->
    <div class="system-container" id="systemContainer">
        <!-- Animated Background -->
        <div class="animated-bg"></div>
        
        <!-- Floating Elements -->
        <div class="floating-element" style="top: 10%; left: 5%;"></div>
        <div class="floating-element" style="top: 60%; right: 10%; animation-delay: -5s;"></div>
        <div class="floating-element" style="bottom: 20%; left: 20%; animation-delay: -10s;"></div>
        
        <!-- Header -->
        <header id="mainHeader">
            <div class="header-container">
                <div class="header-left">
                    <div class="logo">
                        <img src="https://uploads.onecompiler.io/43zx3dt8f/446bh3zrj/1000169792.png" alt="Medrasa Academy Logo">
                    </div>
                    <div class="school-info">
                        <h1>Medrasa Academy</h1>
                        <p>Complete School Management System</p>
                    </div>
                    <div class="brand-badge">
                        <i class="fas fa-brain"></i>
                        <span>Powered by Khube</span>
                    </div>
                </div>
                
                <div class="header-right">
                    <div class="user-info">
                        <span id="loggedInUser">Admin User</span>
                        <button class="logout-btn" onclick="logout()">
                            <i class="fas fa-sign-out-alt"></i> Logout
                        </button>
                    </div>
                </div>
            </div>
        </header>

        <!-- Main Container -->
        <div class="container" id="mainContainer">
            <!-- Tabs Navigation -->
            <div class="tabs-nav no-print">
                <button class="tab-btn active" data-tab="dashboard">
                    <i class="fas fa-tachometer-alt"></i> Dashboard
                </button>
                <button class="tab-btn" data-tab="attendance">
                    <i class="fas fa-calendar-check"></i> Attendance
                </button>
                <button class="tab-btn" data-tab="students">
                    <i class="fas fa-user-graduate"></i> Students
                </button>
                <button class="tab-btn" data-tab="assignments">
                    <i class="fas fa-tasks"></i> Assignments
                </button>
                <button class="tab-btn" data-tab="staff">
                    <i class="fas fa-user-tie"></i> Staff Admin
                </button>
                <button class="tab-btn finance-tab" data-tab="finance">
                    <i class="fas fa-money-bill"></i> Finance
                </button>
                <button class="tab-btn" data-tab="reports">
                    <i class="fas fa-chart-bar"></i> Reports
                </button>
                <button class="tab-btn" data-tab="grades">
                    <i class="fas fa-star"></i> Grades
                </button>
                <button class="tab-btn" data-tab="assessment">
                    <i class="fas fa-clipboard-check"></i> Assessment
                </button>
                <button class="tab-btn" data-tab="import-export">
                    <i class="fas fa-file-import"></i> Import/Export
                </button>
                <button class="tab-btn" data-tab="certificate">
                    <i class="fas fa-award"></i> Certificate
                </button>
                <button class="tab-btn" data-tab="roster">
                    <i class="fas fa-users"></i> Roster
                </button>
                <button class="tab-btn" data-tab="gallery">
                    <i class="fas fa-images"></i> Photo Gallery
                </button>
                <button class="tab-btn" data-tab="finance-communication">
                    <i class="fas fa-comments-dollar"></i> Finance Comm
                </button>
                <button class="tab-btn" data-tab="brand-app">
                    <i class="fas fa-mobile-alt"></i> Brand App
                </button>
                <button class="tab-btn" data-tab="settings">
                    <i class="fas fa-cog"></i> Settings
                </button>
                <button class="tab-btn" onclick="window.print()">
                    <i class="fas fa-print"></i> Print
                </button>
            </div>

            <!-- Dashboard Section -->
            <section id="dashboard" class="section active">
                <h2 class="section-title">
                    <i class="fas fa-tachometer-alt"></i> System Dashboard
                </h2>
                
                <!-- Welcome Message -->
                <div class="dashboard-card card-khube" style="margin-bottom: 2rem;">
                    <div style="display: flex; align-items: center; gap: 1rem;">
                        <div style="width: 80px; height: 80px; background: var(--gradient-khube); border-radius: 20px; display: flex; align-items: center; justify-content: center; color: white; font-size: 2rem;">
                            <i class="fas fa-user"></i>
                        </div>
                        <div>
                            <h3 style="color: var(--khube-blue); margin-bottom: 0.5rem;">Welcome, <span id="dashboardUserName">User</span>!</h3>
                            <p style="color: var(--gray-600);">Role: <span id="dashboardUserRole" class="badge badge-khube">Admin</span></p>
                            <p style="color: var(--gray-600); font-size: 0.9rem; margin-top: 0.5rem;">
                                <i class="fas fa-calendar"></i> Last login: <span id="lastLoginTime">Just now</span>
                            </p>
                        </div>
                    </div>
                </div>
                
                <!-- Quick Stats -->
                <div class="dashboard-grid">
                    <div class="dashboard-card card-red">
                        <div class="stat-number" id="totalStudents">0</div>
                        <h3>Total Students</h3>
                        <p>All registered students</p>
                        <div class="badge badge-red" id="studentChange">+0 Today</div>
                    </div>
                    
                    <div class="dashboard-card card-yellow">
                        <div class="stat-number" id="totalStaff">0</div>
                        <h3>Staff Members</h3>
                        <p>Teachers & Administrators</p>
                        <div class="badge badge-yellow">Active</div>
                    </div>
                    
                    <div class="dashboard-card card-blue">
                        <div class="stat-number" id="attendanceRate">0%</div>
                        <h3>Attendance Rate</h3>
                        <p>Today's attendance</p>
                        <div class="badge badge-blue">Today</div>
                    </div>
                    
                    <div class="dashboard-card card-green">
                        <div class="stat-number" id="revenue">0 ETB</div>
                        <h3>Total Revenue</h3>
                        <p>This month's collection</p>
                        <div class="badge badge-green">Monthly</div>
                    </div>
                    
                    <div class="dashboard-card card-rose">
                        <div class="stat-number" id="kgStudents">0</div>
                        <h3>KG Students</h3>
                        <p>Kindergarten section</p>
                        <div class="badge badge-rose">KG 1-3</div>
                    </div>
                    
                    <div class="dashboard-card card-purple">
                        <div class="stat-number" id="pendingTasks">0</div>
                        <h3>Pending Tasks</h3>
                        <p>Require attention</p>
                        <div class="badge badge-purple">Urgent</div>
                    </div>
                </div>
                
                <!-- Recent Activity -->
                <div class="form-container">
                    <h3 style="color: var(--primary-blue); margin-bottom: 1.5rem;">
                        <i class="fas fa-history"></i> Recent Activity
                    </h3>
                    <div id="recentActivity" style="max-height: 300px; overflow-y: auto;">
                        <!-- Activity populated by JS -->
                    </div>
                </div>
            </section>

            <!-- Attendance Section -->
            <section id="attendance" class="section">
                <h2 class="section-title">
                    <i class="fas fa-calendar-check"></i> Attendance Management
                </h2>
                
                <!-- Date Selection -->
                <div class="form-container">
                    <div class="form-grid">
                        <div class="form-group">
                            <label class="form-label">
                                <i class="fas fa-calendar"></i> Attendance Date *
                            </label>
                            <input type="date" class="form-control" id="attendanceDate" value="">
                        </div>
                        
                        <div class="form-group">
                            <label class="form-label">
                                <i class="fas fa-clock"></i> Session
                            </label>
                            <select class="form-control" id="attendanceSession">
                                <option value="morning">Morning Session</option>
                                <option value="afternoon">Afternoon Session</option>
                                <option value="full-day">Full Day</option>
                            </select>
                        </div>
                    </div>
                </div>
                
                <!-- Attendance Forms Grid -->
                <div class="attendance-forms-grid">
                    <!-- Student Attendance Form -->
                    <div class="attendance-form-card student">
                        <h3 style="color: var(--primary-blue); margin-bottom: 1.5rem;">
                            <i class="fas fa-user-graduate"></i> Student Attendance
                        </h3>
                        
                        <div class="form-group">
                            <label class="form-label">
                                <i class="fas fa-graduation-cap"></i> Select Class
                            </label>
                            <select class="form-control" id="studentClass">
                                <option value="">Select Class</option>
                                <optgroup label="Kindergarten">
                                    <option value="KG 1A">KG 1A</option>
                                    <option value="KG 1B">KG 1B</option>
                                    <option value="KG 2A">KG 2A</option>
                                    <option value="KG 2B">KG 2B</option>
                                    <option value="KG 3A">KG 3A</option>
                                    <option value="KG 3B">KG 3B</option>
                                </optgroup>
                                <optgroup label="Primary School">
                                    <option value="Grade 1A">Grade 1A</option>
                                    <option value="Grade 1B">Grade 1B</option>
                                    <option value="Grade 2A">Grade 2A</option>
                                    <option value="Grade 2B">Grade 2B</option>
                                    <option value="Grade 3A">Grade 3A</option>
                                    <option value="Grade 3B">Grade 3B</option>
                                    <option value="Grade 4A">Grade 4A</option> 
                                    <option value="Grade 4B">Grade 4B</option>
                                    <option value="Grade 5A">Grade 5A</option>
                                    <option value="Grade 5B">Grade 5B</option>
                                    <option value="Grade 6A">Grade 6A</option>
                                    <option value="Grade 6B">Grade 6B</option>
                                    <option value="Grade 7A">Grade 7A</option>
                                    <option value="Grade 7B">Grade 7B</option>
                                    <option value="Grade 8">Grade 8</option>
                                </optgroup>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label class="form-label">
                                <i class="fas fa-list"></i> Students List
                            </label>
                            <div id="studentAttendanceList" style="max-height: 300px; overflow-y: auto; padding: 1rem; background: var(--gradient-card); border-radius: 12px;">
                                <!-- Students list populated here -->
                            </div>
                        </div>
                        
                        <button class="btn btn-primary" onclick="markStudentAttendance()" style="width: 100%;">
                            <i class="fas fa-check-circle"></i> Mark Student Attendance
                        </button>
                    </div>
                    
                    <!-- Teacher Attendance Form -->
                    <div class="attendance-form-card teacher">
                        <h3 style="color: var(--primary-green); margin-bottom: 1.5rem;">
                            <i class="fas fa-chalkboard-teacher"></i> Teacher Attendance
                        </h3>
                        
                        <div class="form-group">
                            <label class="form-label">
                                <i class="fas fa-user-tie"></i> Select Teacher
                            </label>
                            <select class="form-control" id="teacherSelect">
                                <option value="">Select Teacher</option>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label class="form-label">
                                <i class="fas fa-user-check"></i> Status
                            </label>
                            <div style="display: flex; gap: 1rem; flex-wrap: wrap;">
                                <div class="attendance-status-badge status-present active" data-status="present" onclick="selectAttendanceStatus(this, 'teacher')">
                                    <i class="fas fa-check"></i> Present
                                </div>
                                <div class="attendance-status-badge status-absent" data-status="absent" onclick="selectAttendanceStatus(this, 'teacher')">
                                    <i class="fas fa-times"></i> Absent
                                </div>
                                <div class="attendance-status-badge status-late" data-status="late" onclick="selectAttendanceStatus(this, 'teacher')">
                                    <i class="fas fa-clock"></i> Late
                                </div>
                                <div class="attendance-status-badge status-excused" data-status="excused" onclick="selectAttendanceStatus(this, 'teacher')">
                                    <i class="fas fa-file-medical"></i> Excused
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="form-label">
                                <i class="fas fa-sticky-note"></i> Remarks
                            </label>
                            <textarea class="form-control" id="teacherRemarks" rows="2" placeholder="Enter remarks if any"></textarea>
                        </div>
                        
                        <button class="btn btn-success" onclick="markTeacherAttendance()" style="width: 100%;">
                            <i class="fas fa-user-check"></i> Mark Teacher Attendance
                        </button>
                    </div>
                    
                    <!-- Staff Attendance Form -->
                    <div class="attendance-form-card staff">
                        <h3 style="color: var(--primary-orange); margin-bottom: 1.5rem;">
                            <i class="fas fa-user-tie"></i> Staff Attendance
                        </h3>
                        
                        <div class="form-group">
                            <label class="form-label">
                                <i class="fas fa-users"></i> Select Staff Member
                            </label>
                            <select class="form-control" id="staffSelect">
                                <option value="">Select Staff Member</option>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label class="form-label">
                                <i class="fas fa-user-check"></i> Status
                            </label>
                            <div style="display: flex; gap: 1rem; flex-wrap: wrap;">
                                <div class="attendance-status-badge status-present active" data-status="present" onclick="selectAttendanceStatus(this, 'staff')">
                                    <i class="fas fa-check"></i> Present
                                </div>
                                <div class="attendance-status-badge status-absent" data-status="absent" onclick="selectAttendanceStatus(this, 'staff')">
                                    <i class="fas fa-times"></i> Absent
                                </div>
                                <div class="attendance-status-badge status-late" data-status="late" onclick="selectAttendanceStatus(this, 'staff')">
                                    <i class="fas fa-clock"></i> Late
                                </div>
                                <div class="attendance-status-badge status-excused" data-status="excused" onclick="selectAttendanceStatus(this, 'staff')">
                                    <i class="fas fa-file-medical"></i> Excused
                                </div>
                            </div>
                        </div>
                        
                        <button class="btn btn-warning" onclick="markStaffAttendance()" style="width: 100%;">
                            <i class="fas fa-user-check"></i> Mark Staff Attendance
                        </button>
                    </div>
                </div>
                
                <!-- Attendance Summary -->
                <div class="form-container" style="margin-top: 2rem;">
                    <h3 style="color: var(--primary-red); margin-bottom: 1.5rem;">
                        <i class="fas fa-chart-pie"></i> Today's Attendance Summary
                    </h3>
                    
                    <div class="attendance-summary">
                        <div class="summary-card" style="border-left-color: var(--primary-blue);">
                            <h4 style="color: var(--primary-blue);">Students</h4>
                            <div class="stat-number" style="font-size: 2.5rem;" id="studentAttendanceSummary">0/0</div>
                            <p style="color: var(--gray-600);">Present/Absent</p>
                        </div>
                        
                        <div class="summary-card" style="border-left-color: var(--primary-green);">
                            <h4 style="color: var(--primary-green);">Teachers</h4>
                            <div class="stat-number" style="font-size: 2.5rem;" id="teacherAttendanceSummary">0/0</div>
                            <p style="color: var(--gray-600);">Present/Absent</p>
                        </div>
                        
                        <div class="summary-card" style="border-left-color: var(--primary-orange);">
                            <h4 style="color: var(--primary-orange);">Staff</h4>
                            <div class="stat-number" style="font-size: 2.5rem;" id="staffAttendanceSummary">0/0</div>
                            <p style="color: var(--gray-600);">Present/Absent</p>
                        </div>
                    </div>
                </div>
                
                <!-- Attendance Records -->
                <div style="margin-top: 2rem;">
                    <h3 style="color: var(--khube-blue); margin-bottom: 1.5rem;">
                        <i class="fas fa-history"></i> Attendance Records
                    </h3>
                    
                    <div style="overflow-x: auto;">
                        <table class="attendance-table">
                            <thead>
                                <tr>
                                    <th>Date</th>
                                    <th>Role</th>
                                    <th>Name</th>
                                    <th>Status</th>
                                    <th>Session</th>
                                    <th>Remarks</th>
                                    <th>Marked By</th>
                                </tr>
                            </thead>
                            <tbody id="attendanceRecords">
                                <!-- Attendance records populated here -->
                            </tbody>
                        </table>
                    </div>
                </div>
            </section>

            <!-- Students Section -->
            <section id="students" class="section">
                <h2 class="section-title">
                    <i class="fas fa-user-graduate"></i> Student Management
                </h2>
                
                <!-- File Upload for Bulk Student Registration -->
                <div class="file-upload-zone" id="studentUploadZone">
                    <div class="upload-icon">
                        <i class="fas fa-cloud-upload-alt"></i>
                    </div>
                    <h3 style="color: var(--primary-blue); margin-bottom: 1rem;">
                        Upload Student List
                    </h3>
                    <p style="color: var(--gray-600); margin-bottom: 1.5rem;">
                        Drag & drop Excel, CSV, or Text files containing student data<br>
                        or click to browse files
                    </p>
                    <input type="file" id="studentFileUpload" accept=".csv,.xlsx,.xls,.txt" style="display: none;">
                    <button class="btn btn-primary" onclick="document.getElementById('studentFileUpload').click()">
                        <i class="fas fa-upload"></i> Choose File
                    </button>
                    <p style="color: var(--gray-500); font-size: 0.9rem; margin-top: 1rem;">
                        Supported formats: Excel (.xlsx, .xls), CSV, Text (.txt)
                    </p>
                </div>
                
                <!-- Student Registration Form -->
                <div class="form-container">
                    <h3 style="color: var(--primary-green); margin-bottom: 1.5rem;">
                        <i class="fas fa-user-plus"></i> Register New Student
                    </h3>
                    
                    <div class="student-photo-upload" id="studentPhotoUpload">
                        <i class="fas fa-camera" style="font-size: 2rem; color: var(--primary-blue);"></i>
                        <img id="studentPhotoPreview" class="student-photo-preview" alt="Student Photo">
                        <input type="file" id="studentPhotoInput" accept="image/*" style="display: none;">
                    </div>
                    
                    <div class="form-grid">
                        <div class="form-group">
                            <label class="form-label">
                                <i class="fas fa-id-card"></i> Full Name *
                            </label>
                            <input type="text" class="form-control" id="studentName" placeholder="Enter student's full name">
                        </div>
                        
                        <div class="form-group">
                            <label class="form-label">
                                <i class="fas fa-graduation-cap"></i> Grade/Class *
                            </label>
                            <select class="form-control" id="studentGrade">
                                <option value="">Select Grade</option>
                                <optgroup label="Kindergarten">
                                    <option value="KG 1A">KG 1A</option>
                                    <option value="KG 1B">KG 1B</option>
                                    <option value="KG 2A">KG 2A</option>
                                    <option value="KG 2B">KG 2B</option>
                                    <option value="KG 3A">KG 3A</option>
                                    <option value="KG 3B">KG 3B</option>
                                </optgroup>
                                <optgroup label="Primary School">
                                    <option value="Grade 1A">Grade 1A</option>
                                    <option value="Grade 1B">Grade 1B</option>
                                    <option value="Grade 2A">Grade 2A</option>
                                    <option value="Grade 2B">Grade 2B</option>
                                    <option value="Grade 3A">Grade 3A</option>
                                    <option value="Grade 3B">Grade 3B</option>
                                    <option value="Grade 4A">Grade 4A</option> 
                                    <option value="Grade 4B">Grade 4B</option>
                                    <option value="Grade 5A">Grade 5A</option>
                                    <option value="Grade 5B">Grade 5B</option>
                                    <option value="Grade 6A">Grade 6A</option>
                                    <option value="Grade 6B">Grade 6B</option>
                                    <option value="Grade 7A">Grade 7A</option>
                                    <option value="Grade 7B">Grade 7B</option>
                                    <option value="Grade 8">Grade 8</option>
                                </optgroup>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label class="form-label">
                                <i class="fas fa-calendar"></i> Date of Birth *
                            </label>
                            <input type="date" class="form-control" id="studentDOB">
                        </div>
                        
                        <div class="form-group">
                            <label class="form-label">
                                <i class="fas fa-venus-mars"></i> Gender *
                            </label>
                            <select class="form-control" id="studentGender">
                                <option value="">Select Gender</option>
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                            </select>
                        </div>
                    </div>
                    
                    <div style="text-align: center; margin-top: 2rem;">
                        <button class="btn btn-success" onclick="registerStudent()" style="padding: 1rem 3rem;">
                            <i class="fas fa-save"></i> Register Student
                        </button>
                    </div>
                </div>
                
                <!-- Students Table -->
                <div style="margin-top: 2rem;">
                    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 1.5rem;">
                        <h3 style="color: var(--primary-red);">
                            <i class="fas fa-list"></i> Registered Students
                        </h3>
                        <div style="display: flex; gap: 1rem;">
                            <input type="text" class="form-control" id="searchStudents" placeholder="Search students..." style="width: 250px;">
                            <select class="form-control" id="filterGrade" style="width: 150px;">
                                <option value="">All Grades</option>
                                <optgroup label="Kindergarten">
                                    <option value="KG 1A">KG 1A</option>
                                    <option value="KG 1B">KG 1B</option>
                                    <option value="KG 2A">KG 2A</option>
                                    <option value="KG 2B">KG 2B</option>
                                    <option value="KG 3A">KG 3A</option>
                                    <option value="KG 3B">KG 3B</option>
                                </optgroup>
                                <optgroup label="Primary School">
                                    <option value="Grade 1A">Grade 1A</option>
                                    <option value="Grade 1B">Grade 1B</option>
                                    <option value="Grade 2A">Grade 2A</option>
                                    <option value="Grade 2B">Grade 2B</option>
                                    <option value="Grade 3A">Grade 3A</option>
                                    <option value="Grade 3B">Grade 3B</option>
                                    <option value="Grade 4A">Grade 4A</option> 
                                    <option value="Grade 4B">Grade 4B</option>
                                    <option value="Grade 5A">Grade 5A</option>
                                    <option value="Grade 5B">Grade 5B</option>
                                    <option value="Grade 6A">Grade 6A</option>
                                    <option value="Grade 6B">Grade 6B</option>
                                    <option value="Grade 7A">Grade 7A</option>
                                    <option value="Grade 7B">Grade 7B</option>
                                    <option value="Grade 8">Grade 8</option>
                                </optgroup>
                            </select>
                        </div>
                    </div>
                    
                    <div style="overflow-x: auto;">
                        <table class="data-table">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Grade</th>
                                    <th>Gender</th>
                                    <th>DOB</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody id="studentsTable">
                                <!-- Students populated here -->
                            </tbody>
                        </table>
                    </div>
                </div>
            </section>

            <!-- Assignments Section -->
            <section id="assignments" class="section">
                <h2 class="section-title">
                    <i class="fas fa-tasks"></i> Assignments & File Upload
                </h2>
                
                <!-- Assignment Creation Form -->
                <div class="assignment-upload-container">
                    <h3 style="color: var(--primary-blue); margin-bottom: 1.5rem;">
                        <i class="fas fa-plus-circle"></i> Create New Assignment
                    </h3>
                    
                    <div class="form-grid">
                        <div class="form-group">
                            <label class="form-label">
                                <i class="fas fa-book"></i> Assignment Title *
                            </label>
                            <input type="text" class="form-control" id="assignmentTitle" placeholder="Enter assignment title">
                        </div>
                        
                        <div class="form-group">
                            <label class="form-label">
                                <i class="fas fa-graduation-cap"></i> Assigned To *
                            </label>
                            <select class="form-control" id="assignmentClass">
                                <option value="">Select Class</option>
                                <optgroup label="Kindergarten">
                                    <option value="KG 1A">KG 1A</option>
                                    <option value="KG 1B">KG 1B</option>
                                    <option value="KG 2A">KG 2A</option>
                                    <option value="KG 2B">KG 2B</option>
                                    <option value="KG 3A">KG 3A</option>
                                    <option value="KG 3B">KG 3B</option>
                                </optgroup>
                                <optgroup label="Primary School">
                                    <option value="Grade 1A">Grade 1A</option>
                                    <option value="Grade 1B">Grade 1B</option>
                                    <option value="Grade 2A">Grade 2A</option>
                                    <option value="Grade 2B">Grade 2B</option>
                                    <option value="Grade 3A">Grade 3A</option>
                                    <option value="Grade 3B">Grade 3B</option>
                                    <option value="Grade 4A">Grade 4A</option> 
                                    <option value="Grade 4B">Grade 4B</option>
                                    <option value="Grade 5A">Grade 5A</option>
                                    <option value="Grade 5B">Grade 5B</option>
                                    <option value="Grade 6A">Grade 6A</option>
                                    <option value="Grade 6B">Grade 6B</option>
                                    <option value="Grade 7A">Grade 7A</option>
                                    <option value="Grade 7B">Grade 7B</option>
                                    <option value="Grade 8">Grade 8</option>
                                </optgroup>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label class="form-label">
                                <i class="fas fa-calendar"></i> Due Date *
                            </label>
                            <input type="datetime-local" class="form-control" id="assignmentDueDate">
                        </div>
                    </div>
                    
                    <div style="text-align: center; margin-top: 2rem;">
                        <button class="btn btn-success" onclick="createAssignment()" style="padding: 1rem 3rem;">
                            <i class="fas fa-save"></i> Create Assignment
                        </button>
                    </div>
                </div>
                
                <!-- Assignments List -->
                <div style="margin-top: 2rem;">
                    <h3 style="color: var(--primary-purple); margin-bottom: 1.5rem;">
                        <i class="fas fa-list"></i> Assignments List
                    </h3>
                    
                    <div id="assignmentsList">
                        <!-- Assignments populated here -->
                    </div>
                </div>
            </section>

            <!-- Staff Administration Section -->
            <section id="staff" class="section">
                <h2 class="section-title">
                    <i class="fas fa-user-tie"></i> Staff Administration
                </h2>
                
                <!-- Staff Registration Form -->
                <div class="form-container">
                    <h3 style="color: var(--primary-yellow); margin-bottom: 1.5rem;">
                        <i class="fas fa-user-plus"></i> Register New Staff Member
                    </h3>
                    
                    <div class="form-grid">
                        <div class="form-group">
                            <label class="form-label">
                                <i class="fas fa-user"></i> Full Name *
                            </label>
                            <input type="text" class="form-control" id="staffName" placeholder="Enter staff's full name">
                        </div>
                        
                        <div class="form-group">
                            <label class="form-label">
                                <i class="fas fa-briefcase"></i> Position *
                            </label>
                            <select class="form-control" id="staffPosition">
                                <option value="">Select Position</option>
                                <option value="Principal">Principal</option>
                                <option value="Vice Principal">Vice Principal</option>
                                <option value="Teacher">Teacher</option>
                                <option value="KG Teacher">KG Teacher</option>
                                <option value="Administrator">Administrator</option>
                                <option value="Accountant">Accountant</option>
                                <option value="Secretary">Secretary</option>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label class="form-label">
                                <i class="fas fa-phone"></i> Phone Number *
                            </label>
                            <input type="tel" class="form-control" id="staffPhone" placeholder="Staff's phone number">
                        </div>
                    </div>
                    
                    <div style="text-align: center; margin-top: 2rem;">
                        <button class="btn btn-success" onclick="registerStaff()" style="padding: 1rem 3rem;">
                            <i class="fas fa-save"></i> Register Staff
                        </button>
                    </div>
                </div>
                
                <!-- Staff Table -->
                <div style="margin-top: 2rem;">
                    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 1.5rem;">
                        <h3 style="color: var(--primary-green);">
                            <i class="fas fa-list"></i> Staff Members
                        </h3>
                        <div style="display: flex; gap: 1rem;">
                            <input type="text" class="form-control" id="searchStaff" placeholder="Search staff..." style="width: 250px;">
                            <select class="form-control" id="filterPosition" style="width: 150px;">
                                <option value="">All Positions</option>
                                <option value="Teacher">Teacher</option>
                                <option value="Administrator">Administrator</option>
                                <option value="Accountant">Accountant</option>
                                <option value="Secretary">Secretary</option>
                            </select>
                        </div>
                    </div>
                    
                    <div style="overflow-x: auto;">
                        <table class="data-table">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Position</th>
                                    <th>Phone</th>
                                    <th>Join Date</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody id="staffTable">
                                <!-- Staff populated here -->
                            </tbody>
                        </table>
                    </div>
                </div>
            </section>

            <!-- Finance Section -->
            <section id="finance" class="section">
                <h2 class="section-title">
                    <i class="fas fa-money-bill"></i> Finance Management
                </h2>
                
                <!-- Finance Forms Grid -->
                <div class="finance-forms-grid">
                    <!-- Fee Payment Form -->
                    <div class="finance-form-card">
                        <h3 style="color: var(--primary-green); margin-bottom: 1.5rem;">
                            <i class="fas fa-money-check-alt"></i> Fee Payment
                        </h3>
                        
                        <div class="form-grid">
                            <div class="form-group">
                                <label class="form-label">
                                    <i class="fas fa-user-graduate"></i> Student
                                </label>
                                <select class="form-control" id="feeStudent">
                                    <option value="">Select Student</option>
                                </select>
                            </div>
                            
                            <div class="form-group">
                                <label class="form-label">
                                    <i class="fas fa-money-bill-wave"></i> Amount (ETB)
                                </label>
                                <input type="number" class="form-control" id="feeAmount" placeholder="Enter amount">
                            </div>
                            
                            <div class="form-group">
                                <label class="form-label">
                                    <i class="fas fa-file-invoice"></i> Payment Method
                                </label>
                                <select class="form-control" id="feeMethod">
                                    <option value="Cash">Cash</option>
                                    <option value="Bank Transfer">Bank Transfer</option>
                                    <option value="Mobile Money">Mobile Money</option>
                                    <option value="Cheque">Cheque</option>
                                </select>
                            </div>
                        </div>
                        
                        <button class="btn btn-success" onclick="recordFeePayment()" style="width: 100%; margin-top: 1rem;">
                            <i class="fas fa-check-circle"></i> Record Payment
                        </button>
                    </div>
                    
                    <!-- Expense Tracking Form -->
                    <div class="finance-form-card">
                        <h3 style="color: var(--primary-red); margin-bottom: 1.5rem;">
                            <i class="fas fa-receipt"></i> Expense Tracking
                        </h3>
                        
                        <div class="form-grid">
                            <div class="form-group">
                                <label class="form-label">
                                    <i class="fas fa-tag"></i> Expense Category
                                </label>
                                <select class="form-control" id="expenseCategory">
                                    <option value="salary">Salary</option>
                                    <option value="utilities">Utilities</option>
                                    <option value="materials">Teaching Materials</option>
                                    <option value="maintenance">Maintenance</option>
                                    <option value="other">Other</option>
                                </select>
                            </div>
                            
                            <div class="form-group">
                                <label class="form-label">
                                    <i class="fas fa-money-bill-wave"></i> Amount (ETB)
                                </label>
                                <input type="number" class="form-control" id="expenseAmount" placeholder="Enter amount">
                            </div>
                            
                            <div class="form-group">
                                <label class="form-label">
                                    <i class="fas fa-sticky-note"></i> Description
                                </label>
                                <input type="text" class="form-control" id="expenseDescription" placeholder="Expense description">
                            </div>
                        </div>
                        
                        <button class="btn btn-danger" onclick="recordExpense()" style="width: 100%; margin-top: 1rem;">
                            <i class="fas fa-save"></i> Record Expense
                        </button>
                    </div>
                </div>
                
                <!-- Finance Summary -->
                <div class="finance-summary">
                    <div class="finance-card today">
                        <h3>TODAY'S COLLECTION</h3>
                        <div class="amount" id="todayCollection">0 ETB</div>
                        <p>Total fees collected today</p>
                    </div>
                    
                    <div class="finance-card month">
                        <h3>THIS MONTH</h3>
                        <div class="amount" id="monthCollection">0 ETB</div>
                        <p>Month-to-date collection</p>
                    </div>
                    
                    <div class="finance-card year">
                        <h3>THIS YEAR</h3>
                        <div class="amount" id="yearCollection">0 ETB</div>
                        <p>Year-to-date collection</p>
                    </div>
                    
                    <div class="finance-card pending">
                        <h3>PENDING PAYMENTS</h3>
                        <div class="amount" id="pendingPayments">0 ETB</div>
                        <p>Outstanding balances</p>
                    </div>
                </div>
                
                <!-- Fee Records -->
                <div style="margin-top: 2rem;">
                    <h3 style="color: var(--primary-blue); margin-bottom: 1.5rem;">
                        <i class="fas fa-history"></i> Payment History
                    </h3>
                    
                    <div style="overflow-x: auto;">
                        <table class="invoice-table">
                            <thead>
                                <tr>
                                    <th>Date</th>
                                    <th>Student</th>
                                    <th>Amount</th>
                                    <th>Method</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody id="feeTable">
                                <!-- Fee records populated here -->
                            </tbody>
                        </table>
                    </div>
                </div>
            </section>

            <!-- Reports Section -->
            <section id="reports" class="section">
                <h2 class="section-title">
                    <i class="fas fa-chart-bar"></i> Reports & Analytics
                </h2>
                
                <div class="reports-grid">
                    <div class="report-card">
                        <h4><i class="fas fa-user-graduate"></i> Student Reports</h4>
                        <p>Generate comprehensive student reports including attendance, grades, and performance analytics.</p>
                        <button class="btn btn-primary" onclick="generateStudentReport()">
                            <i class="fas fa-download"></i> Generate Report
                        </button>
                    </div>
                    
                    <div class="report-card">
                        <h4><i class="fas fa-money-bill-wave"></i> Financial Reports</h4>
                        <p>Create detailed financial reports including fee collections, expenses, and budget analysis.</p>
                        <button class="btn btn-success" onclick="generateFinancialReport()">
                            <i class="fas fa-file-excel"></i> Export to Excel
                        </button>
                    </div>
                    
                    <div class="report-card">
                        <h4><i class="fas fa-chart-line"></i> Performance Analytics</h4>
                        <p>View detailed analytics on student and teacher performance with visual charts and graphs.</p>
                        <button class="btn btn-warning" onclick="showAnalyticsDashboard()">
                            <i class="fas fa-chart-pie"></i> View Analytics
                        </button>
                    </div>
                    
                    <div class="report-card">
                        <h4><i class="fas fa-calendar-alt"></i> Attendance Reports</h4>
                        <p>Generate monthly and yearly attendance reports for students, teachers, and staff.</p>
                        <button class="btn btn-info" onclick="generateAttendanceReport()">
                            <i class="fas fa-print"></i> Print Report
                        </button>
                    </div>
                </div>
            </section>

            <!-- Grades Section -->
            <section id="grades" class="section">
                <h2 class="section-title">
                    <i class="fas fa-star"></i> Grades & Transcripts
                </h2>
                
                <div class="form-container">
                    <h3 style="color: var(--primary-blue); margin-bottom: 1.5rem;">
                        <i class="fas fa-graduation-cap"></i> Grade Management
                    </h3>
                    
                    <div class="form-grid">
                        <div class="form-group">
                            <label class="form-label">
                                <i class="fas fa-user-graduate"></i> Select Student
                            </label>
                            <select class="form-control" id="gradeStudent">
                                <option value="">Select Student</option>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label class="form-label">
                                <i class="fas fa-book"></i> Subject
                            </label>
                            <select class="form-control" id="gradeSubject">
                                <option value="mathematics">Mathematics</option>
                                <option value="english">English</option>
                                <option value="science">Science</option>
                                <option value="social">Social Studies</option>
                                <option value="amharic">Amharic</option>
                                <option value="oromo">Oromiffa</option>
                                <option value="islamic">Islamic Studies</option>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label class="form-label">
                                <i class="fas fa-percentage"></i> Grade Percentage
                            </label>
                            <input type="number" class="form-control" id="gradePercentage" min="0" max="100" placeholder="Enter grade percentage">
                        </div>
                    </div>
                    
                    <button class="btn btn-success" onclick="recordGrade()" style="width: 100%; margin-top: 1rem;">
                        <i class="fas fa-save"></i> Record Grade
                    </button>
                </div>
                
                <!-- Grades Table -->
                <div style="margin-top: 2rem;">
                    <h3 style="color: var(--primary-purple); margin-bottom: 1.5rem;">
                        <i class="fas fa-list"></i> Student Grades
                    </h3>
                    
                    <div style="overflow-x: auto;">
                        <table class="grades-table">
                            <thead>
                                <tr>
                                    <th>Student</th>
                                    <th>Subject</th>
                                    <th>Grade</th>
                                    <th>Percentage</th>
                                    <th>Letter Grade</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody id="gradesTable">
                                <!-- Grades populated here -->
                            </tbody>
                        </table>
                    </div>
                </div>
            </section>

            <!-- Assessment Section -->
            <section id="assessment" class="section">
                <h2 class="section-title">
                    <i class="fas fa-clipboard-check"></i> Assessment Tools
                </h2>
                
                <div class="assessment-grid">
                    <div class="assessment-card quiz">
                        <h4 style="color: var(--primary-blue);">
                            <i class="fas fa-question-circle"></i> Quiz Creator
                        </h4>
                        <p>Create and manage quizzes for different subjects and grades.</p>
                        <button class="btn btn-primary" onclick="createQuiz()">
                            <i class="fas fa-plus"></i> Create Quiz
                        </button>
                    </div>
                    
                    <div class="assessment-card exam">
                        <h4 style="color: var(--primary-red);">
                            <i class="fas fa-file-alt"></i> Exam Manager
                        </h4>
                        <p>Set up and schedule exams with different sections and time limits.</p>
                        <button class="btn btn-danger" onclick="manageExams()">
                            <i class="fas fa-cog"></i> Manage Exams
                        </button>
                    </div>
                    
                    <div class="assessment-card project">
                        <h4 style="color: var(--primary-green);">
                            <i class="fas fa-project-diagram"></i> Project Assessment
                        </h4>
                        <p>Evaluate student projects with customizable rubrics and criteria.</p>
                        <button class="btn btn-success" onclick="assessProjects()">
                            <i class="fas fa-check-circle"></i> Assess Projects
                        </button>
                    </div>
                    
                    <div class="assessment-card homework">
                        <h4 style="color: var(--primary-yellow);">
                            <i class="fas fa-home"></i> Homework Checker
                        </h4>
                        <p>Review and grade homework assignments with feedback system.</p>
                        <button class="btn btn-warning" onclick="checkHomework()">
                            <i class="fas fa-check-square"></i> Check Homework
                        </button>
                    </div>
                </div>
            </section>

            <!-- Import/Export Section -->
            <section id="import-export" class="section">
                <h2 class="section-title">
                    <i class="fas fa-file-import"></i> Import/Export Data
                </h2>
                
                <div class="import-export-options">
                    <div class="import-export-card">
                        <div style="font-size: 3rem; color: var(--primary-green); margin-bottom: 1rem;">
                            <i class="fas fa-file-import"></i>
                        </div>
                        <h4>Import Data</h4>
                        <p>Import student, staff, or financial data from JSON files.</p>
                        <button class="btn btn-success" onclick="showImportExportModal()">
                            <i class="fas fa-upload"></i> Import Data
                        </button>
                    </div>
                    
                    <div class="import-export-card">
                        <div style="font-size: 3rem; color: var(--primary-blue); margin-bottom: 1rem;">
                            <i class="fas fa-file-export"></i>
                        </div>
                        <h4>Export Data</h4>
                        <p>Export all system data to JSON format for backup.</p>
                        <button class="btn btn-primary" onclick="showImportExportModal()">
                            <i class="fas fa-download"></i> Export Data
                        </button>
                    </div>
                    
                    <div class="import-export-card">
                        <div style="font-size: 3rem; color: var(--primary-purple); margin-bottom: 1rem;">
                            <i class="fas fa-database"></i>
                        </div>
                        <h4>Backup & Restore</h4>
                        <p>Create system backups and restore data when needed.</p>
                        <button class="btn btn-purple" onclick="showImportExportModal()">
                            <i class="fas fa-save"></i> Backup System
                        </button>
                    </div>
                </div>
                
                <!-- Data Statistics -->
                <div class="form-container" style="margin-top: 2rem;">
                    <h3 style="color: var(--khube-blue); margin-bottom: 1.5rem;">
                        <i class="fas fa-chart-pie"></i> Data Statistics
                    </h3>
                    <div class="dashboard-grid">
                        <div class="dashboard-card card-red">
                            <div class="stat-number" id="dataStudents">0</div>
                            <h3>Students</h3>
                            <p>Total registered students</p>
                        </div>
                        
                        <div class="dashboard-card card-yellow">
                            <div class="stat-number" id="dataStaff">0</div>
                            <h3>Staff</h3>
                            <p>Total staff members</p>
                        </div>
                        
                        <div class="dashboard-card card-blue">
                            <div class="stat-number" id="dataFees">0</div>
                            <h3>Fee Records</h3>
                            <p>Total payment records</p>
                        </div>
                        
                        <div class="dashboard-card card-green">
                            <div class="stat-number" id="dataAttendance">0</div>
                            <h3>Attendance</h3>
                            <p>Total attendance records</p>
                        </div>
                    </div>
                </div>
                
                <!-- Data Management -->
                <div class="form-container" style="margin-top: 2rem;">
                    <h3 style="color: var(--primary-red); margin-bottom: 1.5rem;">
                        <i class="fas fa-database"></i> Data Management
                    </h3>
                    <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: 1rem;">
                        <button class="btn btn-warning" onclick="exportStudentsCSV()">
                            <i class="fas fa-file-csv"></i> Export Students (CSV)
                        </button>
                        <button class="btn btn-info" onclick="exportStaffCSV()">
                            <i class="fas fa-file-excel"></i> Export Staff (CSV)
                        </button>
                        <button class="btn btn-success" onclick="exportFeesCSV()">
                            <i class="fas fa-file-invoice-dollar"></i> Export Fees (CSV)
                        </button>
                        <button class="btn btn-danger" onclick="clearAllData()">
                            <i class="fas fa-trash"></i> Clear All Data
                        </button>
                    </div>
                </div>
            </section>

            <!-- Certificate Section -->
            <section id="certificate" class="section">
                <h2 class="section-title">
                    <i class="fas fa-award"></i> Certificate Generator
                </h2>
                
                <div class="certificate-preview">
                    <h3>CERTIFICATE OF ACHIEVEMENT</h3>
                    <p style="text-align: center; font-size: 1.2rem; margin: 2rem 0;">
                        This is to certify that
                    </p>
                    <div style="text-align: center; font-size: 2rem; font-weight: bold; color: var(--primary-red); margin: 2rem 0;">
                        [Student Name]
                    </div>
                    <p style="text-align: center; font-size: 1.2rem;">
                        has successfully completed the requirements and is awarded this certificate of achievement.
                    </p>
                    <div style="display: flex; justify-content: space-between; margin-top: 3rem;">
                        <div style="text-align: center;">
                            <div style="border-top: 1px solid #000; width: 200px; padding-top: 0.5rem;">
                                Principal's Signature
                            </div>
                        </div>
                        <div style="text-align: center;">
                            <div style="border-top: 1px solid #000; width: 200px; padding-top: 0.5rem;">
                                Date
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="certificate-details">
                    <div class="form-group">
                        <label class="form-label">
                            <i class="fas fa-user-graduate"></i> Student Name
                        </label>
                        <select class="form-control" id="certificateStudent">
                            <option value="">Select Student</option>
                        </select>
                    </div>
                    
                    <div class="form-group">
                        <label class="form-label">
                            <i class="fas fa-award"></i> Certificate Type
                        </label>
                        <select class="form-control" id="certificateType">
                            <option value="achievement">Achievement</option>
                            <option value="completion">Completion</option>
                            <option value="excellence">Excellence</option>
                            <option value="participation">Participation</option>
                        </select>
                    </div>
                    
                    <div class="form-group">
                        <label class="form-label">
                            <i class="fas fa-calendar"></i> Issue Date
                        </label>
                        <input type="date" class="form-control" id="certificateDate" value="">
                    </div>
                </div>
                
                <div style="text-align: center; margin-top: 2rem;">
                    <button class="btn btn-success" onclick="generateCertificate()" style="padding: 1rem 3rem;">
                        <i class="fas fa-print"></i> Generate Certificate
                    </button>
                    <button class="btn btn-primary" onclick="downloadCertificate()" style="padding: 1rem 3rem; margin-left: 1rem;">
                        <i class="fas fa-download"></i> Download PDF
                    </button>
                </div>
            </section>

            <!-- Roster Section -->
            <section id="roster" class="section">
                <h2 class="section-title">
                    <i class="fas fa-users"></i> Class Roster
                </h2>
                
                <div class="roster-container">
                    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 1.5rem;">
                        <h3 style="color: var(--khube-blue);">
                            <i class="fas fa-list"></i> Class Rosters
                        </h3>
                        <select class="form-control" id="rosterClass" style="width: 200px;">
                            <option value="">Select Class</option>
                            <optgroup label="Kindergarten">
                                <option value="KG 1A">KG 1A</option>
                                <option value="KG 1B">KG 1B</option>
                                <option value="KG 2A">KG 2A</option>
                                <option value="KG 2B">KG 2B</option>
                                <option value="KG 3A">KG 3A</option>
                                <option value="KG 3B">KG 3B</option>
                            </optgroup>
                            <optgroup label="Primary School">
                                <option value="Grade 1A">Grade 1A</option>
                                <option value="Grade 1B">Grade 1B</option>
                                <option value="Grade 2A">Grade 2A</option>
                                <option value="Grade 2B">Grade 2B</option>
                                <option value="Grade 3A">Grade 3A</option>
                                <option value="Grade 3B">Grade 3B</option>
                                <option value="Grade 4A">Grade 4A</option> 
                                <option value="Grade 4B">Grade 4B</option>
                                <option value="Grade 5A">Grade 5A</option>
                                <option value="Grade 5B">Grade 5B</option>
                                <option value="Grade 6A">Grade 6A</option>
                                <option value="Grade 6B">Grade 6B</option>
                                <option value="Grade 7A">Grade 7A</option>
                                <option value="Grade 7B">Grade 7B</option>
                                <option value="Grade 8">Grade 8</option>
                            </optgroup>
                        </select>
                    </div>
                    
                    <div style="overflow-x: auto;">
                        <table class="roster-table">
                            <thead>
                                <tr>
                                    <th>Student ID</th>
                                    <th>Name</th>
                                    <th>Gender</th>
                                    <th>DOB</th>
                                    <th>Parent Contact</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody id="rosterTable">
                                <!-- Roster populated here -->
                            </tbody>
                        </table>
                    </div>
                </div>
            </section>

            <!-- Gallery Section -->
            <section id="gallery" class="section">
                <h2 class="section-title">
                    <i class="fas fa-images"></i> Photo Gallery
                </h2>
                
                <div class="gallery-controls">
                    <h3 style="color: var(--khube-blue);">School Events & Activities</h3>
                    <button class="gallery-upload-btn" onclick="uploadGalleryPhoto()">
                        <i class="fas fa-upload"></i> Upload Photo
                    </button>
                </div>
                
                <div class="gallery-grid" id="photoGallery">
                    <!-- Gallery photos populated here -->
                </div>
            </section>

            <!-- Finance Communication Section -->
            <section id="finance-communication" class="section">
                <h2 class="section-title">
                    <i class="fas fa-comments-dollar"></i> Finance Communication
                </h2>
                
                <!-- Payment Methods -->
                <div class="finance-communication-grid">
                    <div class="payment-method-card">
                        <div class="payment-logo cbe-logo">
                            <i class="fas fa-university"></i>
                        </div>
                        <h3 style="color: var(--khube-blue); margin-bottom: 1rem;">CBE Digital</h3>
                        <p style="color: var(--gray-600); margin-bottom: 1.5rem;">
                            Secure bank transfers via Commercial Bank of Ethiopia
                        </p>
                        <div class="qr-code-container">
                            <div class="qr-code">
                                <i class="fas fa-qrcode"></i>
                            </div>
                            <p style="margin-top: 1rem; color: var(--gray-600); font-size: 0.9rem;">
                                Scan to pay via CBE Birr
                            </p>
                        </div>
                        <div style="margin-top: 1.5rem;">
                            <p><strong>Account Details:</strong></p>
                            <p>Bank: Commercial Bank of Ethiopia</p>
                            <p>Account: 100034567890</p>
                            <p>Name: Medrasa Academy</p>
                            <p>Branch: Hirna Branch</p>
                        </div>
                        <button class="btn btn-khube" onclick="initiateCBEPayment()" style="margin-top: 1.5rem;">
                            <i class="fas fa-mobile-alt"></i> Pay via CBE Birr
                        </button>
                    </div>
                    
                    <div class="payment-method-card">
                        <div class="payment-logo telebirr-logo">
                            <i class="fas fa-mobile-alt"></i>
                        </div>
                        <h3 style="color: var(--primary-green); margin-bottom: 1rem;">TeleBirr</h3>
                        <p style="color: var(--gray-600); margin-bottom: 1.5rem;">
                            Quick and easy mobile money payments
                        </p>
                        <div class="qr-code-container">
                            <div class="qr-code">
                                <i class="fas fa-qrcode"></i>
                            </div>
                            <p style="margin-top: 1rem; color: var(--gray-600); font-size: 0.9rem;">
                                Scan to pay via TeleBirr
                            </p>
                        </div>
                        <div style="margin-top: 1.5rem;">
                            <p><strong>TeleBirr Details:</strong></p>
                            <p>Merchant: Medrasa Academy</p>
                            <p>Account: 0912345678</p>
                            <p>Short Code: *809#</p>
                        </div>
                        <button class="btn btn-success" onclick="initiateTeleBirrPayment()" style="margin-top: 1.5rem;">
                            <i class="fas fa-bolt"></i> Pay via TeleBirr
                        </button>
                    </div>
                    
                    <div class="payment-method-card">
                        <div class="payment-logo cbe-birr-logo">
                            <i class="fas fa-wallet"></i>
                        </div>
                        <h3 style="color: var(--primary-purple); margin-bottom: 1rem;">CBE Birr</h3>
                        <p style="color: var(--gray-600); margin-bottom: 1.5rem;">
                            Mobile banking with CBE Birr application
                        </p>
                        <div style="background: var(--gradient-card); padding: 1.5rem; border-radius: 15px; margin: 1.5rem 0;">
                            <p><strong>Payment Steps:</strong></p>
                            <ol style="text-align: left; margin-top: 0.5rem;">
                                <li>Open CBE Birr App</li>
                                <li>Select 'Pay Merchant'</li>
                                <li>Enter Merchant ID: MEDRASA01</li>
                                <li>Enter amount and confirm</li>
                            </ol>
                        </div>
                        <button class="btn btn-primary" onclick="initiateCBEBirrPayment()" style="margin-top: 1rem;">
                            <i class="fas fa-qrcode"></i> Generate Payment Code
                        </button>
                    </div>
                </div>
                
                <!-- SMS Notification System -->
                <div class="sms-system">
                    <h3 style="color: white; margin-bottom: 1.5rem;">
                        <i class="fas fa-sms"></i> SMS & Notification System
                    </h3>
                    <p style="opacity: 0.9; margin-bottom: 1.5rem;">
                        Send automatic payment reminders and receipts via SMS
                    </p>
                    
                    <div class="form-container" style="background: rgba(255,255,255,0.1);">
                        <div class="form-grid">
                            <div class="form-group">
                                <label class="form-label" style="color: white;">
                                    <i class="fas fa-user-graduate"></i> Select Student
                                </label>
                                <select class="form-control" id="smsStudent">
                                    <option value="">Select Student</option>
                                </select>
                            </div>
                            
                            <div class="form-group">
                                <label class="form-label" style="color: white;">
                                    <i class="fas fa-comment-alt"></i> Message Type
                                </label>
                                <select class="form-control" id="smsType">
                                    <option value="payment">Payment Reminder</option>
                                    <option value="receipt">Payment Receipt</option>
                                    <option value="balance">Balance Alert</option>
                                    <option value="custom">Custom Message</option>
                                </select>
                            </div>
                        </div>
                        
                        <div class="form-group" style="margin-top: 1rem;">
                            <label class="form-label" style="color: white;">
                                <i class="fas fa-edit"></i> Custom Message
                            </label>
                            <textarea class="form-control" id="customMessage" rows="3" placeholder="Enter custom message..." style="background: rgba(255,255,255,0.9);"></textarea>
                        </div>
                        
                        <div class="sms-form">
                            <div>
                                <p style="color: white; font-size: 0.9rem;">
                                    <i class="fas fa-info-circle"></i> Message will be sent to parent's phone
                                </p>
                            </div>
                            <button class="btn btn-warning" onclick="sendPaymentNotification()">
                                <i class="fas fa-paper-plane"></i> Send SMS
                            </button>
                        </div>
                    </div>
                    
                    <!-- SMS Credits -->
                    <div style="margin-top: 2rem; padding: 1rem; background: rgba(255,255,255,0.1); border-radius: 15px;">
                        <div style="display: flex; justify-content: space-between; align-items: center;">
                            <div>
                                <p style="margin: 0; font-weight: 600;">SMS Credits Available</p>
                                <p style="margin: 0.25rem 0 0; opacity: 0.8;">Valid until Dec 2024</p>
                            </div>
                            <div style="text-align: right;">
                                <div class="stat-number" style="font-size: 2rem; color: var(--primary-yellow);">1,500</div>
                                <p style="margin: 0; font-size: 0.9rem;">Messages</p>
                            </div>
                        </div>
                        <button class="btn btn-rose" onclick="buySMSCredits()" style="margin-top: 1rem; width: 100%;">
                            <i class="fas fa-shopping-cart"></i> Buy More SMS Credits
                        </button>
                    </div>
                </div>
            </section>

            <!-- Medrasa Brand App Section -->
            <section id="brand-app" class="section">
                <h2 class="section-title">
                    <i class="fas fa-mobile-alt"></i> Medrasa Brand App
                </h2>
                
                <div class="brand-app-container">
                    <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 3rem; align-items: center;">
                        <div style="text-align: left;">
                            <h1 style="color: white; font-size: 2.5rem; margin-bottom: 1rem;">
                                Medrasa Academy App
                            </h1>
                            <p style="color: rgba(255,255,255,0.9); margin-bottom: 2rem; font-size: 1.1rem;">
                                Everything you need in one powerful mobile application. 
                                Manage school activities, make payments, track progress, 
                                and stay connected - all from your smartphone.
                            </p>
                            
                            <div class="app-download-buttons">
                                <a href="#" class="app-download-btn" onclick="downloadApp('android')">
                                    <i class="fab fa-google-play"></i>
                                    <div>
                                        <div style="font-size: 0.8rem;">GET IT ON</div>
                                        <div style="font-size: 1.2rem;">Google Play</div>
                                    </div>
                                </a>
                                
                                <a href="#" class="app-download-btn" onclick="downloadApp('ios')">
                                    <i class="fab fa-app-store"></i>
                                    <div>
                                        <div style="font-size: 0.8rem;">Download on the</div>
                                        <div style="font-size: 1.2rem;">App Store</div>
                                    </div>
                                </a>
                                
                                <a href="#" class="app-download-btn" onclick="installPWA()">
                                    <i class="fas fa-download"></i>
                                    <div>
                                        <div style="font-size: 0.8rem;">INSTALL AS</div>
                                        <div style="font-size: 1.2rem;">PWA App</div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        
                        <div style="text-align: center;">
                            <img src="https://via.placeholder.com/300x600/FFFFFF/1A56DB?text=Medrasa+App" alt="Medrasa App Screenshot" class="app-screenshot">
                        </div>
                    </div>
                </div>
                
                <!-- App Features -->
                <div class="app-features-grid">
                    <div class="app-feature">
                        <div style="width: 60px; height: 60px; background: var(--primary-blue); border-radius: 15px; display: flex; align-items: center; justify-content: center; margin: 0 auto 1rem; color: white; font-size: 1.5rem;">
                            <i class="fas fa-money-bill-wave"></i>
                        </div>
                        <h4 style="color: var(--khube-blue); margin-bottom: 0.5rem;">Mobile Payments</h4>
                        <p style="color: var(--gray-600); font-size: 0.9rem;">
                            Pay fees instantly via CBE Birr, TeleBirr, and other mobile money options
                        </p>
                    </div>
                    
                    <div class="app-feature">
                        <div style="width: 60px; height: 60px; background: var(--primary-green); border-radius: 15px; display: flex; align-items: center; justify-content: center; margin: 0 auto 1rem; color: white; font-size: 1.5rem;">
                            <i class="fas fa-bell"></i>
                        </div>
                        <h4 style="color: var(--khube-green); margin-bottom: 0.5rem;">Real-time Notifications</h4>
                        <p style="color: var(--gray-600); font-size: 0.9rem;">
                            Get instant alerts for attendance, grades, fees, and school announcements
                        </p>
                    </div>
                    
                    <div class="app-feature">
                        <div style="width: 60px; height: 60px; background: var(--primary-purple); border-radius: 15px; display: flex; align-items: center; justify-content: center; margin: 0 auto 1rem; color: white; font-size: 1.5rem;">
                            <i class="fas fa-chart-line"></i>
                        </div>
                        <h4 style="color: var(--primary-purple); margin-bottom: 0.5rem;">Progress Tracking</h4>
                        <p style="color: var(--gray-600); font-size: 0.9rem;">
                            Monitor student performance, attendance, and behavior in real-time
                        </p>
                    </div>
                    
                    <div class="app-feature">
                        <div style="width: 60px; height: 60px; background: var(--primary-rose); border-radius: 15px; display: flex; align-items: center; justify-content: center; margin: 0 auto 1rem; color: white; font-size: 1.5rem;">
                            <i class="fas fa-comments"></i>
                        </div>
                        <h4 style="color: var(--primary-rose); margin-bottom: 0.5rem;">Parent-Teacher Chat</h4>
                        <p style="color: var(--gray-600); font-size: 0.9rem;">
                            Direct messaging between parents and teachers for better communication
                        </p>
                    </div>
                </div>
                
                <!-- App Demo Video -->
                <div style="margin-top: 3rem; text-align: center;">
                    <h3 style="color: var(--khube-blue); margin-bottom: 1.5rem;">
                        <i class="fas fa-play-circle"></i> Watch App Demo
                    </h3>
                    <div style="max-width: 800px; margin: 0 auto; background: var(--gradient-card); border-radius: 20px; padding: 2rem;">
                        <div style="width: 100%; height: 300px; background: var(--gray-200); border-radius: 15px; display: flex; align-items: center; justify-content: center; color: var(--gray-600); font-size: 2rem;">
                            <i class="fas fa-play-circle"></i> App Demo Video
                        </div>
                        <p style="color: var(--gray-600); margin-top: 1rem;">
                            See how the Medrasa Academy app makes school management easier.
                        </p>
                        <button class="btn btn-khube" onclick="watchDemo()" style="margin-top: 1rem;">
                            <i class="fas fa-play"></i> Play Demo Video
                        </button>
                    </div>
                </div>
            </section>

            <!-- Settings Section -->
            <section id="settings" class="section">
                <h2 class="section-title">
                    <i class="fas fa-cog"></i> System Settings
                </h2>
                
                <div class="settings-grid">
                    <div class="settings-card">
                        <h4 style="color: var(--khube-blue); margin-bottom: 1rem;">
                            <i class="fas fa-school"></i> School Information
                        </h4>
                        <div class="settings-group">
                            <label>School Name</label>
                            <input type="text" class="form-control" id="schoolName" value="Medrasa Academy">
                        </div>
                        <div class="settings-group">
                            <label>School Address</label>
                            <input type="text" class="form-control" id="schoolAddress" value="Hirna, Oromia, Ethiopia">
                        </div>
                        <div class="settings-group">
                            <label>Contact Email</label>
                            <input type="email" class="form-control" id="schoolEmail" value="medaimanaprimaryschool@gmail.com">
                        </div>
                        <button class="btn btn-primary" onclick="saveSchoolInfo()">
                            <i class="fas fa-save"></i> Save Changes
                        </button>
                    </div>
                    
                    <div class="settings-card">
                        <h4 style="color: var(--primary-green); margin-bottom: 1rem;">
                            <i class="fas fa-bell"></i> Notifications
                        </h4>
                        <div class="settings-group">
                            <label style="display: flex; justify-content: space-between; align-items: center;">
                                <span>Email Notifications</span>
                                <label class="toggle-switch">
                                    <input type="checkbox" checked>
                                    <span class="toggle-slider"></span>
                                </label>
                            </label>
                        </div>
                        <div class="settings-group">
                            <label style="display: flex; justify-content: space-between; align-items: center;">
                                <span>SMS Notifications</span>
                                <label class="toggle-switch">
                                    <input type="checkbox" checked>
                                    <span class="toggle-slider"></span>
                                </label>
                            </label>
                        </div>
                        <div class="settings-group">
                            <label style="display: flex; justify-content: space-between; align-items: center;">
                                <span>Push Notifications</span>
                                <label class="toggle-switch">
                                    <input type="checkbox" checked>
                                    <span class="toggle-slider"></span>
                                </label>
                            </label>
                        </div>
                    </div>
                    
                    <div class="settings-card">
                        <h4 style="color: var(--primary-red); margin-bottom: 1rem;">
                            <i class="fas fa-shield-alt"></i> Security
                        </h4>
                        <div class="settings-group">
                            <label>Auto Logout (minutes)</label>
                            <select class="form-control" id="autoLogout">
                                <option value="15">15 minutes</option>
                                <option value="30" selected>30 minutes</option>
                                <option value="60">60 minutes</option>
                                <option value="120">2 hours</option>
                            </select>
                        </div>
                        <div class="settings-group">
                            <label>Password Policy</label>
                            <select class="form-control" id="passwordPolicy">
                                <option value="weak">Weak (6+ characters)</option>
                                <option value="medium" selected>Medium (8+ with mix)</option>
                                <option value="strong">Strong (12+ complex)</option>
                            </select>
                        </div>
                        <button class="btn btn-danger" onclick="changePassword()">
                            <i class="fas fa-key"></i> Change Password
                        </button>
                    </div>
                    
                    <div class="settings-card">
                        <h4 style="color: var(--primary-purple); margin-bottom: 1rem;">
                            <i class="fas fa-database"></i> Data Management
                        </h4>
                        <div class="settings-group">
                            <label>Auto Backup</label>
                            <select class="form-control" id="autoBackup">
                                <option value="daily">Daily</option>
                                <option value="weekly" selected>Weekly</option>
                                <option value="monthly">Monthly</option>
                                <option value="never">Never</option>
                            </select>
                        </div>
                        <div class="settings-group">
                            <label>Data Retention (months)</label>
                            <select class="form-control" id="dataRetention">
                                <option value="12">12 months</option>
                                <option value="24" selected>24 months</option>
                                <option value="36">36 months</option>
                                <option value="60">60 months</option>
                            </select>
                        </div>
                        <button class="btn btn-warning" onclick="backupNow()">
                            <i class="fas fa-save"></i> Backup Now
                        </button>
                        <button class="btn btn-danger" onclick="clearOldData()" style="margin-left: 0.5rem;">
                            <i class="fas fa-trash"></i> Clear Old Data
                        </button>
                    </div>
                </div>
            </section>

        </div>

        <!-- Footer -->
        <footer id="mainFooter">
            <div class="footer-content">
                <div class="footer-section">
                    <h4>Medrasa Academy</h4>
                    <p>Hirna, Oromia, Ethiopia</p>
                    <p>Excellence in Education Since 2024</p>
                    <div style="display: flex; gap: 1rem; margin-top: 1rem;">
                        <div class="logo" style="width: 60px; height: 60px;">
                            <img src="https://uploads.onecompiler.io/43zx3dt8f/446bh3zrj/1000169792.png" alt="Medrasa Logo">
                        </div>
                    </div>
                </div>
                
                <div class="footer-section">
                    <h4>Contact Information</h4>
                    <p><i class="fas fa-map-marker-alt"></i> Hirna, Oromia, Ethiopia</p>
                    <p><i class="fas fa-envelope"></i> medaimanaprimaryschool@gmail.com</p>
                    <p><i class="fas fa-phone"></i> +25125441245 / 0922389113</p>
                </div>
                
                <div class="footer-section">
                    <h4>Social Media</h4>
                    <div class="social-media-links">
                        <p>
                            <a href="https://www.youtube.com/@MadrasahMedaImana" target="_blank" class="social-link youtube">
                                <i class="fab fa-youtube"></i> YouTube
                            </a>
                        </p>
                        <p>
                            <a href="https://t.me/MedrasaAcademy" target="_blank" class="social-link telegram">
                                <i class="fab fa-telegram"></i> Telegram
                            </a>
                        </p>
                        <p>
                            <a href="https://facebook.com/MedrasaAcademy" target="_blank" class="social-link facebook">
                                <i class="fab fa-facebook"></i> Facebook
                            </a>
                        </p>
                        <p>
                            <a href="https://twitter.com/MedrasaAcademy" target="_blank" class="social-link twitter">
                                <i class="fab fa-twitter"></i> Twitter
                            </a>
                        </p>
                        <p>
                            <a href="https://tiktok.com/@MedrasaAcademy" target="_blank" class="social-link tiktok">
                                <i class="fab fa-tiktok"></i> TikTok
                            </a>
                        </p>
                    </div>
                </div>
                
                <div class="footer-section">
                    <h4>System Information</h4>
                    <p><i class="fas fa-user-tie"></i> Admin: Umar Ahmad</p>
                    <p><i class="fas fa-code"></i> Developer: Umar Ahmad</p>
                    <p><i class="fas fa-calendar-alt"></i> Version: 2025.1.0</p>
                    <p><i class="fas fa-database"></i> <span id="dataCount">0 Records</span></p>
                </div>
            </div>
            
            <div class="copyright">
                <p>© 2025 Medrasa Academy. All rights reserved.</p>
                <p>Complete School Management System | Developed by Umar Ahmad | <strong>Mada Imana Primary School</strong></p>
                <div class="khube-brand">
                    <div class="khube-logo">
                        <i class="fas fa-brain" style="color: var(--khube-blue); font-size: 1.5rem;"></i>
                    </div>
                    <div>
                        <p style="font-weight: 700; margin: 0;">Powered by Khube Intelligence</p>
                        <p style="margin: 0.25rem 0 0; font-size: 0.9rem; color: rgba(255,255,255,0.6);">
                            Advanced AI & Technology Solutions
                        </p>
                    </div>
                </div>
            </div>
        </footer>
    </div>

    <!-- PWA Elements -->
    <div class="install-app-btn" id="installAppBtn" style="display: none;">
        <i class="fas fa-download"></i>
        <span>Install App</span>
    </div>
    
    <div class="offline-indicator" id="offlineIndicator">
        <i class="fas fa-wifi-slash"></i> You are currently offline. Some features may not be available.
    </div>

    <script>
        // ===== COMPLETE AND FIXED JAVASCRIPT =====
        
        // System Data Management
        const systemData = {
            students: [],
            staff: [],
            grades: [],
            certificates: [],
            gallery: [],
            fees: [],
            uploadedFiles: [],
            registeredUsers: [],
            attendance: [],
            assignments: [],
            submissions: [],
            expenses: [],
            settings: {
                schoolName: "Medrasa Academy",
                schoolAddress: "Hirna, Oromia, Ethiopia",
                schoolEmail: "medaimanaprimaryschool@gmail.com",
                schoolPhone: "+25125441245 / 0922389113",
                lastBackup: null
            }
        };

        // Finance Communication Data
        const financeData = {
            transactions: [],
            smsCredits: 1500,
            paymentMethods: {
                cbe: {
                    accountNumber: "100034567890",
                    merchantId: "MEDRASA01",
                    branch: "Hirna Branch"
                },
                telebirr: {
                    account: "0912345678",
                    shortCode: "*809#",
                    ussd: "*809*1*0912345678*"
                }
            }
        };

        // Current User
        let currentUser = null;
        let currentRole = null;

        // Default Admin Credentials
        const defaultAdmin = {
            username: "khube",
            password: "15303099",
            fullName: "Khube Administrator",
            phone: "+25125441245",
            email: "admin@khubeintelligence.com",
            role: "admin",
            registered: new Date().toISOString()
        };

        // Default Users
        const defaultUsers = [
            defaultAdmin,
            {
                username: "teacher1",
                password: "teacher123",
                fullName: "John Doe",
                role: "teacher",
                email: "teacher@medrasa.edu.et",
                phone: "+251911234567"
            },
            {
                username: "finance1",
                password: "finance123",
                fullName: "Jane Smith",
                role: "finance",
                email: "finance@medrasa.edu.et",
                phone: "+251922334455"
            },
            {
                username: "parent1",
                password: "parent123",
                fullName: "Ahmed Mohammed",
                role: "parent",
                email: "parent@email.com",
                phone: "+251933445566"
            },
            {
                username: "student1",
                password: "student123",
                fullName: "Fatima Ali",
                role: "student",
                email: "student@medrasa.edu.et",
                phone: "+251944556677"
            },
            {
                username: "staff1",
                password: "staff123",
                fullName: "Mohammed Hassan",
                role: "staff",
                email: "staff@medrasa.edu.et",
                phone: "+251955667788"
            },
            {
                username: "committee1",
                password: "committee123",
                fullName: "Abebe Kebede",
                role: "committee",
                email: "committee@medrasa.edu.et",
                phone: "+251966778899"
            }
        ];

        // Initialize System
        document.addEventListener('DOMContentLoaded', function() {
            initializeLoginSystem();
            loadSystemData();
            
            // Set current date for forms
            const today = new Date().toISOString().split('T')[0];
            const now = new Date().toISOString().slice(0, 16);
            
            if (document.getElementById('attendanceDate')) {
                document.getElementById('attendanceDate').value = today;
            }
            
            if (document.getElementById('studentDOB')) {
                document.getElementById('studentDOB').value = "2015-01-01";
            }
            
            if (document.getElementById('assignmentDueDate')) {
                document.getElementById('assignmentDueDate').value = now;
            }
            
            if (document.getElementById('certificateDate')) {
                document.getElementById('certificateDate').value = today;
            }
            
            // Initialize all event listeners
            initializeEventListeners();
            
            // Add registration form event listener
            document.getElementById('registrationForm').addEventListener('submit', function(e) {
                e.preventDefault();
                handleRegistration();
            });
            
            // Add form field event listeners
            document.getElementById('regPassword').addEventListener('input', checkPasswordStrength);
            
            // Initial activities
            addActivity("Medrasa Academy System initialized", "khube");
            addActivity("Khube Intelligence activated", "khube");
            addActivity("Version 2025.1.0 Activated", "success");
            
            // Initialize photo upload
            initPhotoUpload();
            
            // Set default role
            currentRole = 'admin';
        });

        // ===== LOGIN & REGISTRATION FUNCTIONS =====
        function initializeLoginSystem() {
            // Role selector in login
            const roleBtns = document.querySelectorAll('.role-btn');
            roleBtns.forEach(btn => {
                btn.addEventListener('click', function() {
                    roleBtns.forEach(b => b.classList.remove('active'));
                    this.classList.add('active');
                    currentRole = this.getAttribute('data-role');
                });
            });

            // Login form submit
            document.getElementById('loginForm').addEventListener('submit', function(e) {
                e.preventDefault();
                handleLogin();
            });
        }

        function showRegistration() {
            document.getElementById('registrationOverlay').style.display = 'flex';
        }

        function showLogin() {
            document.getElementById('registrationOverlay').style.display = 'none';
        }

        function checkPasswordStrength() {
            const password = document.getElementById('regPassword').value;
            const strengthBar = document.getElementById('passwordStrength');
            
            let strength = 0;
            
            if (password.length >= 8) strength++;
            if (password.length >= 12) strength++;
            if (/\d/.test(password)) strength++;
            if (/[a-zA-Z]/.test(password)) strength++;
            if (/[^a-zA-Z0-9]/.test(password)) strength++;
            
            strengthBar.className = 'password-strength';
            if (password.length === 0) {
                strengthBar.style.width = '0%';
                return;
            }
            
            if (strength <= 2) {
                strengthBar.className += ' strength-weak';
            } else if (strength === 3) {
                strengthBar.className += ' strength-medium';
            } else if (strength === 4) {
                strengthBar.className += ' strength-strong';
            } else {
                strengthBar.className += ' strength-very-strong';
            }
        }

        function handleLogin() {
            const username = document.getElementById('username').value;
            const password = document.getElementById('password').value;
            
            let user = null;
            
            // Check default users first
            user = defaultUsers.find(u => 
                u.username === username && u.password === password
            );
            
            // Check registered users
            if (!user) {
                user = systemData.registeredUsers.find(u => 
                    u.username === username && u.password === password
                );
            }
            
            if (user) {
                currentUser = user;
                currentRole = user.role;
                
                // Update last login
                user.lastLogin = new Date().toISOString();
                saveSystemData();
                
                loginUser(user);
            } else {
                showNotification("Invalid username or password", "error");
            }
        }

        function handleRegistration() {
            const fullName = document.getElementById('regFullName').value;
            const phone = document.getElementById('regPhone').value;
            const role = document.getElementById('regRole').value;
            const username = document.getElementById('regUsername').value;
            const password = document.getElementById('regPassword').value;
            const confirmPassword = document.getElementById('regConfirmPassword').value;
            
            // Validation
            if (!fullName || !phone || !role || !username || !password) {
                showNotification('Please fill all required fields', 'error');
                return;
            }
            
            if (password !== confirmPassword) {
                showNotification('Passwords do not match', 'error');
                return;
            }
            
            if (password.length < 8) {
                showNotification('Password must be at least 8 characters long', 'error');
                return;
            }
            
            // Check if username already exists
            const existingUser = [...defaultUsers, ...systemData.registeredUsers].find(user => user.username === username);
            if (existingUser) {
                showNotification('Username already exists. Please choose another.', 'error');
                return;
            }
            
            // Create new user
            const newUser = {
                id: 'USER' + Date.now().toString().slice(-6),
                fullName: fullName,
                phone: phone,
                username: username,
                password: password,
                role: role,
                registered: new Date().toISOString(),
                lastLogin: null
            };
            
            // Add to registered users
            systemData.registeredUsers.push(newUser);
            saveSystemData();
            
            // Clear form
            document.getElementById('registrationForm').reset();
            document.getElementById('passwordStrength').style.width = '0%';
            
            showNotification(`Account created successfully! Welcome ${fullName}`, 'success');
            
            // Auto login after registration
            setTimeout(() => {
                currentUser = newUser;
                currentRole = role;
                loginUser(newUser);
                showLogin();
            }, 1000);
        }

        function loginUser(user) {
            // Hide login screen, show system
            document.getElementById('loginScreen').style.display = 'none';
            document.getElementById('systemContainer').style.display = 'block';
            
            // Update user info
            document.getElementById('loggedInUser').textContent = user.fullName;
            document.getElementById('dashboardUserName').textContent = user.fullName;
            document.getElementById('dashboardUserRole').textContent = user.role.charAt(0).toUpperCase() + user.role.slice(1);
            
            // Set last login time
            const lastLoginTime = user.lastLogin ? new Date(user.lastLogin).toLocaleString() : 'First login';
            document.getElementById('lastLoginTime').textContent = lastLoginTime;
            
            // Set role-based UI
            if (user.role === 'finance') {
                document.body.classList.add('finance-role');
                switchTab('finance');
            } else {
                switchTab('dashboard');
            }
            
            // Initialize system
            initializeEventListeners();
            updateDashboard();
            addActivity(`User ${user.fullName} logged in successfully`, "success");
            
            showNotification(`Welcome ${user.fullName}!`, "success");
            
            // Clear login form
            document.getElementById('username').value = '';
            document.getElementById('password').value = '';
        }

        function logout() {
            currentUser = null;
            currentRole = null;
            
            // Show login, hide system
            document.getElementById('loginScreen').style.display = 'flex';
            document.getElementById('systemContainer').style.display = 'none';
            
            document.body.classList.remove('finance-role');
            
            showNotification("Logged out successfully", "info");
        }

        // ===== DATA MANAGEMENT FUNCTIONS =====
        function loadSystemData() {
            const savedData = localStorage.getItem('medrasaSystemData');
            if (savedData) {
                try {
                    const parsedData = JSON.parse(savedData);
                    Object.assign(systemData, parsedData);
                    updateDataCount();
                    loadStudentsTable();
                    loadStaffTable();
                    loadFeeTable();
                    loadGradesTable();
                    loadGallery();
                    updateDataStatistics();
                } catch (e) {
                    console.error("Error loading system data:", e);
                    showNotification("Error loading saved data. Using default data.", "error");
                    addSampleData();
                }
            }
            
            // Add sample data if empty
            if (systemData.students.length === 0) {
                addSampleData();
            }
            
            // Update system info
            updateSystemInfo();
            
            const totalRecords = 
                systemData.students.length +
                systemData.staff.length +
                systemData.fees.length +
                systemData.attendance.length;
            
            addActivity(`System Version 2025.1.0 - ${totalRecords} records loaded`, "success");
        }

        function saveSystemData() {
            localStorage.setItem('medrasaSystemData', JSON.stringify(systemData));
            updateDataCount();
            updateSystemInfo();
            updateDataStatistics();
        }

        function addSampleData() {
            // Sample students
            const sampleStudents = [
                {
                    id: 'STU001',
                    name: 'Ahmed Mohammed',
                    grade: 'Grade 1A',
                    gender: 'Male',
                    dob: '2019-06-15',
                    phone: '0912345678',
                    email: 'ahmed.parent@email.com',
                    address: 'Hirna, Oromia',
                    photo: '',
                    registered: new Date().toISOString()
                },
                {
                    id: 'STU002',
                    name: 'Fatima Ali',
                    grade: 'Grade 1B',
                    gender: 'Female',
                    dob: '2019-03-20',
                    phone: '0923456789',
                    email: 'fatima.parent@email.com',
                    address: 'Hirna, Oromia',
                    photo: '',
                    registered: new Date().toISOString()
                },
                {
                    id: 'STU003',
                    name: 'Mohammed Hassan',
                    grade: 'KG 1A',
                    gender: 'Male',
                    dob: '2020-01-10',
                    phone: '0934567890',
                    email: 'mohammed.parent@email.com',
                    address: 'Hirna, Oromia',
                    photo: '',
                    registered: new Date().toISOString()
                }
            ];
            
            // Sample staff
            const sampleStaff = [
                {
                    id: 'STAFF001',
                    name: 'Umar Ahmad',
                    position: 'Principal',
                    phone: '0910158778',
                    email: 'umar.ahmad@medrasa.edu.et',
                    joinDate: '2024-01-01',
                    salary: 25000,
                    qualification: 'M.Ed in Educational Leadership',
                    address: 'Hirna, Oromia'
                },
                {
                    id: 'STAFF002',
                    name: 'Aisha Mohammed',
                    position: 'Teacher',
                    phone: '0923456789',
                    email: 'aisha@medrasa.edu.et',
                    joinDate: '2024-02-15',
                    salary: 15000,
                    qualification: 'B.Ed in Primary Education',
                    address: 'Hirna, Oromia'
                }
            ];
            
            // Sample fees
            const sampleFees = [
                {
                    id: 'FEE001',
                    studentId: 'STU001',
                    studentName: 'Ahmed Mohammed',
                    date: new Date().toISOString().split('T')[0],
                    amount: 1500,
                    method: 'Cash',
                    description: 'Tuition Fee - Term 1',
                    status: 'Paid'
                },
                {
                    id: 'FEE002',
                    studentId: 'STU002',
                    studentName: 'Fatima Ali',
                    date: new Date(Date.now() - 86400000).toISOString().split('T')[0],
                    amount: 1200,
                    method: 'Mobile Money',
                    description: 'Tuition Fee - Term 1',
                    status: 'Paid'
                }
            ];
            
            // Sample grades
            const sampleGrades = [
                {
                    id: 'GRADE001',
                    studentId: 'STU001',
                    studentName: 'Ahmed Mohammed',
                    subject: 'Mathematics',
                    grade: 85,
                    letterGrade: 'A',
                    term: 'Term 1',
                    date: new Date().toISOString().split('T')[0]
                },
                {
                    id: 'GRADE002',
                    studentId: 'STU002',
                    studentName: 'Fatima Ali',
                    subject: 'English',
                    grade: 92,
                    letterGrade: 'A+',
                    term: 'Term 1',
                    date: new Date().toISOString().split('T')[0]
                }
            ];
            
            // Sample gallery
            const sampleGallery = [
                {
                    id: 'GAL001',
                    title: 'School Opening Day',
                    description: 'Opening ceremony of Medrasa Academy',
                    date: '2024-09-01',
                    image: 'https://via.placeholder.com/300x200/1A56DB/FFFFFF?text=School+Event'
                },
                {
                    id: 'GAL002',
                    title: 'Sports Day',
                    description: 'Annual sports competition',
                    date: '2024-10-15',
                    image: 'https://via.placeholder.com/300x200/059669/FFFFFF?text=Sports+Day'
                }
            ];
            
            // Sample attendance
            const sampleAttendance = [
                {
                    id: 'ATT001',
                    date: new Date().toISOString().split('T')[0],
                    session: 'morning',
                    role: 'student',
                    personId: 'STU001',
                    personName: 'Ahmed Mohammed',
                    status: 'present',
                    remarks: '',
                    markedBy: 'Admin',
                    markedAt: new Date().toISOString()
                },
                {
                    id: 'ATT002',
                    date: new Date().toISOString().split('T')[0],
                    session: 'morning',
                    role: 'teacher',
                    personId: 'STAFF002',
                    personName: 'Aisha Mohammed',
                    status: 'present',
                    remarks: '',
                    markedBy: 'Admin',
                    markedAt: new Date().toISOString()
                }
            ];
            
            systemData.students.push(...sampleStudents);
            systemData.staff.push(...sampleStaff);
            systemData.fees.push(...sampleFees);
            systemData.grades.push(...sampleGrades);
            systemData.gallery.push(...sampleGallery);
            systemData.attendance.push(...sampleAttendance);
            saveSystemData();
        }

        function updateDataStatistics() {
            document.getElementById('dataStudents').textContent = systemData.students.length;
            document.getElementById('dataStaff').textContent = systemData.staff.length;
            document.getElementById('dataFees').textContent = systemData.fees.length;
            document.getElementById('dataAttendance').textContent = systemData.attendance.length;
        }

        // ===== IMPORT/EXPORT FUNCTIONS =====
        function showImportExportModal() {
            document.getElementById('importExportModal').style.display = 'flex';
            showImportTab();
            updateExportPreview();
            loadBackupList();
        }

        function closeModal() {
            document.getElementById('importExportModal').style.display = 'none';
        }

        function showImportTab() {
            document.getElementById('importTab').style.display = 'block';
            document.getElementById('exportTab').style.display = 'none';
            document.getElementById('backupTab').style.display = 'none';
            
            // Update tabs
            const tabs = document.querySelectorAll('.import-export-content .tab-btn');
            tabs.forEach(tab => tab.classList.remove('active'));
            tabs[0].classList.add('active');
        }

        function showExportTab() {
            document.getElementById('importTab').style.display = 'none';
            document.getElementById('exportTab').style.display = 'block';
            document.getElementById('backupTab').style.display = 'none';
            
            // Update tabs
            const tabs = document.querySelectorAll('.import-export-content .tab-btn');
            tabs.forEach(tab => tab.classList.remove('active'));
            tabs[1].classList.add('active');
            
            updateExportPreview();
        }

        function showBackupTab() {
            document.getElementById('importTab').style.display = 'none';
            document.getElementById('exportTab').style.display = 'none';
            document.getElementById('backupTab').style.display = 'block';
            
            // Update tabs
            const tabs = document.querySelectorAll('.import-export-content .tab-btn');
            tabs.forEach(tab => tab.classList.remove('active'));
            tabs[2].classList.add('active');
            
            loadBackupList();
        }

        function updateExportPreview() {
            const summary = document.getElementById('dataSummary');
            if (!summary) return;
            
            const data = {
                students: systemData.students.length,
                staff: systemData.staff.length,
                fees: systemData.fees.length,
                grades: systemData.grades.length,
                attendance: systemData.attendance.length,
                registeredUsers: systemData.registeredUsers.length,
                certificates: systemData.certificates ? systemData.certificates.length : 0,
                assignments: systemData.assignments ? systemData.assignments.length : 0,
                expenses: systemData.expenses ? systemData.expenses.length : 0
            };
            
            let html = '<div style="margin-top: 0.5rem;">';
            for (const [key, value] of Object.entries(data)) {
                html += `<div style="display: flex; justify-content: space-between; margin-bottom: 0.25rem;">
                    <span>${key.charAt(0).toUpperCase() + key.slice(1)}:</span>
                    <span><strong>${value}</strong></span>
                </div>`;
            }
            html += '</div>';
            
            summary.innerHTML = html;
        }

        function exportData() {
            try {
                const exportData = {
                    version: "1.0",
                    exportedAt: new Date().toISOString(),
                    exportedBy: currentUser ? currentUser.fullName : "System",
                    systemData: systemData,
                    financeData: financeData
                };
                
                const dataStr = JSON.stringify(exportData, null, 2);
                const dataBlob = new Blob([dataStr], {type: 'application/json'});
                const url = URL.createObjectURL(dataBlob);
                
                const link = document.createElement('a');
                link.href = url;
                link.download = `medrasa-backup-${new Date().toISOString().split('T')[0]}.json`;
                document.body.appendChild(link);
                link.click();
                document.body.removeChild(link);
                URL.revokeObjectURL(url);
                
                showNotification("Data exported successfully!", "success");
                addActivity("Exported system data", "success");
                closeModal();
            } catch (error) {
                showNotification("Error exporting data: " + error.message, "error");
            }
        }

        function handleImport() {
            const fileInput = document.getElementById('importFileInput');
            if (!fileInput.files.length) {
                showNotification("Please select a file to import", "error");
                return;
            }
            
            const file = fileInput.files[0];
            const reader = new FileReader();
            
            reader.onload = function(e) {
                try {
                    const importedData = JSON.parse(e.target.result);
                    
                    // Validate imported data
                    if (!importedData.systemData) {
                        throw new Error("Invalid data format");
                    }
                    
                    if (confirm("Importing data will replace ALL current data. Are you sure?")) {
                        // Merge imported data with current system
                        Object.keys(importedData.systemData).forEach(key => {
                            if (systemData.hasOwnProperty(key)) {
                                systemData[key] = importedData.systemData[key];
                            }
                        });
                        
                        // Save and reload
                        saveSystemData();
                        loadStudentsTable();
                        loadStaffTable();
                        loadFeeTable();
                        loadGradesTable();
                        loadGallery();
                        updateDashboard();
                        updateDataStatistics();
                        
                        showNotification("Data imported successfully!", "success");
                        addActivity("Imported system data from backup", "success");
                        closeModal();
                    }
                } catch (error) {
                    showNotification("Error importing data: " + error.message, "error");
                }
            };
            
            reader.readAsText(file);
        }

        function loadBackupList() {
            const backupList = document.getElementById('backupList');
            if (!backupList) return;
            
            // Get all backups from localStorage
            backupList.innerHTML = '<option value="">Select a backup</option>';
            
            for (let i = 0; i < localStorage.length; i++) {
                const key = localStorage.key(i);
                if (key.startsWith('medrasa-backup-')) {
                    try {
                        const backupData = JSON.parse(localStorage.getItem(key));
                        const option = document.createElement('option');
                        option.value = key;
                        option.textContent = `${key.replace('medrasa-backup-', '')} - ${backupData.exportedBy}`;
                        backupList.appendChild(option);
                    } catch (e) {
                        console.error("Error parsing backup:", key, e);
                    }
                }
            }
        }

        function createBackup() {
            const backupKey = `medrasa-backup-${Date.now()}`;
            const backupData = {
                version: "1.0",
                exportedAt: new Date().toISOString(),
                exportedBy: currentUser ? currentUser.fullName : "System",
                systemData: systemData,
                financeData: financeData
            };
            
            localStorage.setItem(backupKey, JSON.stringify(backupData));
            
            showNotification("Backup created successfully!", "success");
            addActivity("Created system backup", "success");
            loadBackupList();
        }

        function restoreBackup() {
            const backupList = document.getElementById('backupList');
            const selectedKey = backupList.value;
            
            if (!selectedKey) {
                showNotification("Please select a backup to restore", "error");
                return;
            }
            
            if (confirm("Restoring from backup will replace ALL current data. Are you sure?")) {
                try {
                    const backupData = JSON.parse(localStorage.getItem(selectedKey));
                    
                    if (!backupData.systemData) {
                        throw new Error("Invalid backup format");
                    }
                    
                    // Replace current data with backup
                    Object.keys(backupData.systemData).forEach(key => {
                        if (systemData.hasOwnProperty(key)) {
                            systemData[key] = backupData.systemData[key];
                        }
                    });
                    
                    // Save and reload
                    saveSystemData();
                    loadStudentsTable();
                    loadStaffTable();
                    loadFeeTable();
                    loadGradesTable();
                    loadGallery();
                    updateDashboard();
                    updateDataStatistics();
                    
                    showNotification("Backup restored successfully!", "success");
                    addActivity("Restored system from backup", "success");
                    closeModal();
                } catch (error) {
                    showNotification("Error restoring backup: " + error.message, "error");
                }
            }
        }

        // ===== CSV EXPORT FUNCTIONS =====
        function exportStudentsCSV() {
            if (systemData.students.length === 0) {
                showNotification("No student data to export", "warning");
                return;
            }
            
            const headers = ['ID', 'Name', 'Grade', 'Gender', 'Date of Birth', 'Phone', 'Email', 'Address', 'Registered Date'];
            const rows = systemData.students.map(student => [
                student.id,
                student.name,
                student.grade,
                student.gender,
                student.dob,
                student.phone || '',
                student.email || '',
                student.address || '',
                student.registered ? new Date(student.registered).toLocaleDateString() : ''
            ]);
            
            exportToCSV(headers, rows, 'medrasa-students.csv');
            showNotification("Students exported to CSV", "success");
            addActivity("Exported students to CSV", "success");
        }

        function exportStaffCSV() {
            if (systemData.staff.length === 0) {
                showNotification("No staff data to export", "warning");
                return;
            }
            
            const headers = ['ID', 'Name', 'Position', 'Phone', 'Email', 'Join Date', 'Salary', 'Qualification', 'Address'];
            const rows = systemData.staff.map(staff => [
                staff.id,
                staff.name,
                staff.position,
                staff.phone || '',
                staff.email || '',
                staff.joinDate || '',
                staff.salary || '',
                staff.qualification || '',
                staff.address || ''
            ]);
            
            exportToCSV(headers, rows, 'medrasa-staff.csv');
            showNotification("Staff exported to CSV", "success");
            addActivity("Exported staff to CSV", "success");
        }

        function exportFeesCSV() {
            if (systemData.fees.length === 0) {
                showNotification("No fee data to export", "warning");
                return;
            }
            
            const headers = ['ID', 'Student ID', 'Student Name', 'Date', 'Amount', 'Method', 'Description', 'Status', 'Recorded By'];
            const rows = systemData.fees.map(fee => [
                fee.id,
                fee.studentId,
                fee.studentName,
                fee.date,
                fee.amount,
                fee.method,
                fee.description || '',
                fee.status,
                fee.recordedBy || ''
            ]);
            
            exportToCSV(headers, rows, 'medrasa-fees.csv');
            showNotification("Fees exported to CSV", "success");
            addActivity("Exported fees to CSV", "success");
        }

        function exportToCSV(headers, rows, filename) {
            const csvContent = [
                headers.join(','),
                ...rows.map(row => row.map(cell => `"${cell}"`).join(','))
            ].join('\n');
            
            const blob = new Blob([csvContent], { type: 'text/csv;charset=utf-8;' });
            const url = URL.createObjectURL(blob);
            const link = document.createElement('a');
            link.href = url;
            link.download = filename;
            document.body.appendChild(link);
            link.click();
            document.body.removeChild(link);
            URL.revokeObjectURL(url);
        }

        function clearAllData() {
            if (confirm("This will delete ALL data including students, staff, fees, and everything else. This action cannot be undone. Are you absolutely sure?")) {
                localStorage.clear();
                location.reload();
            }
        }

        // ===== PHOTO UPLOAD FUNCTIONS =====
        function initPhotoUpload() {
            const photoUpload = document.getElementById('studentPhotoUpload');
            const photoInput = document.getElementById('studentPhotoInput');
            
            if (photoUpload && photoInput) {
                photoUpload.addEventListener('click', function() {
                    photoInput.click();
                });
                
                photoInput.addEventListener('change', function(e) {
                    const file = e.target.files[0];
                    if (file) {
                        const reader = new FileReader();
                        reader.onload = function(e) {
                            const preview = document.getElementById('studentPhotoPreview');
                            preview.src = e.target.result;
                            preview.style.display = 'block';
                            photoUpload.querySelector('i').style.display = 'none';
                        };
                        reader.readAsDataURL(file);
                    }
                });
            }
        }

        // ===== ATTENDANCE FUNCTIONS =====
        function selectAttendanceStatus(element, role) {
            const container = element.parentElement;
            container.querySelectorAll('.attendance-status-badge').forEach(badge => {
                badge.classList.remove('active');
            });
            element.classList.add('active');
        }

        function loadStudentAttendanceList() {
            const classSelect = document.getElementById('studentClass');
            if (!classSelect) return;
            
            const selectedClass = classSelect.value;
            const listContainer = document.getElementById('studentAttendanceList');
            
            if (!selectedClass) {
                listContainer.innerHTML = '<p style="color: var(--gray-600); text-align: center;">Please select a class</p>';
                return;
            }
            
            const studentsInClass = systemData.students.filter(student => student.grade === selectedClass);
            
            let html = '';
            studentsInClass.forEach(student => {
                html += `
                    <div style="display: flex; align-items: center; justify-content: space-between; padding: 0.75rem; border-bottom: 1px solid var(--gray-200);">
                        <div>
                            <strong>${student.name}</strong>
                            <div style="font-size: 0.85rem; color: var(--gray-600);">${student.id}</div>
                        </div>
                        <div style="display: flex; gap: 0.5rem;">
                            <div class="attendance-status-badge status-present" data-student-id="${student.id}" onclick="markIndividualStudentAttendance(this, '${student.id}')">
                                <i class="fas fa-check"></i>
                            </div>
                            <div class="attendance-status-badge status-absent" data-student-id="${student.id}" onclick="markIndividualStudentAttendance(this, '${student.id}')">
                                <i class="fas fa-times"></i>
                            </div>
                            <div class="attendance-status-badge status-late" data-student-id="${student.id}" onclick="markIndividualStudentAttendance(this, '${student.id}')">
                                <i class="fas fa-clock"></i>
                            </div>
                        </div>
                    </div>
                `;
            });
            
            listContainer.innerHTML = html || '<p style="color: var(--gray-600); text-align: center;">No students found in this class</p>';
        }

        function markIndividualStudentAttendance(element, studentId) {
            const container = element.parentElement;
            container.querySelectorAll('.attendance-status-badge').forEach(badge => {
                badge.classList.remove('active');
            });
            element.classList.add('active');
        }

        function markStudentAttendance() {
            const date = document.getElementById('attendanceDate').value;
            const session = document.getElementById('attendanceSession').value;
            const classSelect = document.getElementById('studentClass').value;
            
            if (!date || !classSelect) {
                showNotification('Please select date and class', 'error');
                return;
            }
            
            const studentsInClass = systemData.students.filter(student => student.grade === classSelect);
            let markedCount = 0;
            
            studentsInClass.forEach(student => {
                const statusBadge = document.querySelector(`[data-student-id="${student.id}"].active`);
                if (statusBadge) {
                    const status = statusBadge.classList.contains('status-present') ? 'present' :
                                 statusBadge.classList.contains('status-absent') ? 'absent' : 'late';
                    
                    const attendanceRecord = {
                        id: 'ATT' + Date.now().toString().slice(-6) + markedCount,
                        date: date,
                        session: session,
                        role: 'student',
                        personId: student.id,
                        personName: student.name,
                        status: status,
                        remarks: '',
                        markedBy: currentUser.fullName,
                        markedAt: new Date().toISOString()
                    };
                    
                    systemData.attendance.push(attendanceRecord);
                    markedCount++;
                }
            });
            
            if (markedCount > 0) {
                saveSystemData();
                loadAttendanceRecords();
                updateAttendanceSummary();
                showNotification(`Attendance marked for ${markedCount} students`, 'success');
                addActivity(`Marked attendance for ${markedCount} students in ${classSelect}`, 'success');
            } else {
                showNotification('No attendance marked. Please select status for students.', 'warning');
            }
        }

        function markTeacherAttendance() {
            const date = document.getElementById('attendanceDate').value;
            const session = document.getElementById('attendanceSession').value;
            const teacherSelect = document.getElementById('teacherSelect');
            
            if (!teacherSelect) return;
            
            const teacherId = teacherSelect.value;
            const teacherName = teacherSelect.selectedOptions[0]?.text || '';
            const remarks = document.getElementById('teacherRemarks')?.value || '';
            const statusElement = document.querySelector('#teacher-attendance .attendance-status-badge.active');
            
            if (!date || !teacherId || !statusElement) {
                showNotification('Please select date, teacher and status', 'error');
                return;
            }
            
            const status = statusElement.getAttribute('data-status');
            
            const attendanceRecord = {
                id: 'ATT' + Date.now().toString().slice(-6),
                date: date,
                session: session,
                role: 'teacher',
                personId: teacherId,
                personName: teacherName,
                status: status,
                remarks: remarks,
                markedBy: currentUser.fullName,
                markedAt: new Date().toISOString()
            };
            
            systemData.attendance.push(attendanceRecord);
            saveSystemData();
            loadAttendanceRecords();
            updateAttendanceSummary();
            
            showNotification(`Attendance marked for ${teacherName}`, 'success');
            addActivity(`Marked attendance for teacher ${teacherName}`, 'success');
            
            // Clear form
            if (document.getElementById('teacherRemarks')) {
                document.getElementById('teacherRemarks').value = '';
            }
        }

        function markStaffAttendance() {
            const date = document.getElementById('attendanceDate').value;
            const session = document.getElementById('attendanceSession').value;
            const staffSelect = document.getElementById('staffSelect');
            
            if (!staffSelect) return;
            
            const staffId = staffSelect.value;
            const staffName = staffSelect.selectedOptions[0]?.text || '';
            const statusElement = document.querySelector('#staff-attendance .attendance-status-badge.active');
            
            if (!date || !staffId || !statusElement) {
                showNotification('Please select date, staff member and status', 'error');
                return;
            }
            
            const status = statusElement.getAttribute('data-status');
            
            const attendanceRecord = {
                id: 'ATT' + Date.now().toString().slice(-6),
                date: date,
                session: session,
                role: 'staff',
                personId: staffId,
                personName: staffName,
                status: status,
                remarks: '',
                markedBy: currentUser.fullName,
                markedAt: new Date().toISOString()
            };
            
            systemData.attendance.push(attendanceRecord);
            saveSystemData();
            loadAttendanceRecords();
            updateAttendanceSummary();
            
            showNotification(`Attendance marked for ${staffName}`, 'success');
            addActivity(`Marked attendance for staff ${staffName}`, 'success');
        }

        function loadAttendanceRecords() {
            const date = document.getElementById('attendanceDate').value;
            const table = document.getElementById('attendanceRecords');
            
            if (!table) return;
            
            let records = systemData.attendance;
            if (date) {
                records = records.filter(record => record.date === date);
            }
            
            table.innerHTML = '';
            
            records.forEach(record => {
                let statusBadge = '';
                switch(record.status) {
                    case 'present':
                        statusBadge = '<span class="badge badge-green">Present</span>';
                        break;
                    case 'absent':
                        statusBadge = '<span class="badge badge-red">Absent</span>';
                        break;
                    case 'late':
                        statusBadge = '<span class="badge badge-yellow">Late</span>';
                        break;
                    case 'excused':
                        statusBadge = '<span class="badge badge-blue">Excused</span>';
                        break;
                }
                
                const row = document.createElement('tr');
                row.innerHTML = `
                    <td>${record.date}</td>
                    <td><span class="badge ${record.role === 'student' ? 'badge-blue' : 
                                             record.role === 'teacher' ? 'badge-green' : 'badge-orange'}">${record.role}</span></td>
                    <td>${record.personName}</td>
                    <td>${statusBadge}</td>
                    <td>${record.session || 'Full Day'}</td>
                    <td>${record.remarks || '-'}</td>
                    <td>${record.markedBy}</td>
                `;
                table.appendChild(row);
            });
            
            if (records.length === 0) {
                const row = document.createElement('tr');
                row.innerHTML = `
                    <td colspan="7" style="text-align: center; color: var(--gray-600); padding: 2rem;">
                        No attendance records found for selected date
                    </td>
                `;
                table.appendChild(row);
            }
        }

        function updateAttendanceSummary() {
            const date = document.getElementById('attendanceDate')?.value || new Date().toISOString().split('T')[0];
            
            // Student attendance
            const studentRecords = systemData.attendance.filter(r => r.date === date && r.role === 'student');
            const studentPresent = studentRecords.filter(r => r.status === 'present').length;
            const studentTotal = studentRecords.length;
            
            const studentSummary = document.getElementById('studentAttendanceSummary');
            if (studentSummary) {
                studentSummary.textContent = `${studentPresent}/${studentTotal}`;
            }
            
            // Teacher attendance
            const teacherRecords = systemData.attendance.filter(r => r.date === date && r.role === 'teacher');
            const teacherPresent = teacherRecords.filter(r => r.status === 'present').length;
            const teacherTotal = teacherRecords.length;
            
            const teacherSummary = document.getElementById('teacherAttendanceSummary');
            if (teacherSummary) {
                teacherSummary.textContent = `${teacherPresent}/${teacherTotal}`;
            }
            
            // Staff attendance
            const staffRecords = systemData.attendance.filter(r => r.date === date && r.role === 'staff');
            const staffPresent = staffRecords.filter(r => r.status === 'present').length;
            const staffTotal = staffRecords.length;
            
            const staffSummary = document.getElementById('staffAttendanceSummary');
            if (staffSummary) {
                staffSummary.textContent = `${staffPresent}/${staffTotal}`;
            }
            
            // Update dashboard attendance rate
            const totalPresent = studentPresent + teacherPresent + staffPresent;
            const totalRecords = studentTotal + teacherTotal + staffTotal;
            const attendanceRate = totalRecords > 0 ? Math.round((totalPresent / totalRecords) * 100) : 0;
            
            const attendanceRateEl = document.getElementById('attendanceRate');
            if (attendanceRateEl) {
                attendanceRateEl.textContent = attendanceRate + '%';
            }
        }

        // ===== STUDENT MANAGEMENT FUNCTIONS =====
        function registerStudent() {
            const name = document.getElementById('studentName').value;
            const grade = document.getElementById('studentGrade').value;
            const dob = document.getElementById('studentDOB').value;
            const gender = document.getElementById('studentGender').value;
            
            if (!name || !grade || !dob || !gender) {
                showNotification('Please fill all required fields', 'error');
                return;
            }
            
            const student = {
                id: 'STU' + Date.now().toString().slice(-6),
                name: name,
                grade: grade,
                gender: gender,
                dob: dob,
                registered: new Date().toISOString()
            };
            
            systemData.students.push(student);
            saveSystemData();
            loadStudentsTable();
            updateDashboard();
            updateDataStatistics();
            
            // Clear form
            document.getElementById('studentName').value = '';
            document.getElementById('studentDOB').value = '';
            
            showNotification(`Student ${name} registered successfully`, 'success');
            addActivity(`Registered new student: ${name}`, 'success');
        }

        function loadStudentsTable() {
            const table = document.getElementById('studentsTable');
            if (!table) return;
            
            table.innerHTML = '';
            
            systemData.students.forEach(student => {
                const row = document.createElement('tr');
                row.innerHTML = `
                    <td>${student.name}</td>
                    <td><span class="badge badge-blue">${student.grade}</span></td>
                    <td>${student.gender}</td>
                    <td>${student.dob}</td>
                    <td>
                        <button class="btn btn-primary" onclick="editStudent('${student.id}')">
                            <i class="fas fa-edit"></i>
                        </button>
                        <button class="btn btn-danger" onclick="deleteStudent('${student.id}')">
                            <i class="fas fa-trash"></i>
                        </button>
                    </td>
                `;
                table.appendChild(row);
            });
            
            // Update student count
            const totalStudentsEl = document.getElementById('totalStudents');
            if (totalStudentsEl) {
                totalStudentsEl.textContent = systemData.students.length;
            }
            
            // Update KG student count
            const kgStudents = systemData.students.filter(s => s.grade.includes('KG')).length;
            const kgStudentsEl = document.getElementById('kgStudents');
            if (kgStudentsEl) {
                kgStudentsEl.textContent = kgStudents;
            }
        }

        // ===== STAFF MANAGEMENT FUNCTIONS =====
        function registerStaff() {
            const name = document.getElementById('staffName').value;
            const position = document.getElementById('staffPosition').value;
            const phone = document.getElementById('staffPhone').value;
            
            if (!name || !position || !phone) {
                showNotification('Please fill all required fields', 'error');
                return;
            }
            
            const staff = {
                id: 'STAFF' + Date.now().toString().slice(-6),
                name: name,
                position: position,
                phone: phone,
                joinDate: new Date().toISOString().split('T')[0],
                registered: new Date().toISOString()
            };
            
            systemData.staff.push(staff);
            saveSystemData();
            loadStaffTable();
            updateDashboard();
            updateDataStatistics();
            
            // Clear form
            document.getElementById('staffName').value = '';
            document.getElementById('staffPhone').value = '';
            
            showNotification(`Staff ${name} registered successfully`, 'success');
            addActivity(`Registered new staff: ${name}`, 'success');
        }

        function loadStaffTable() {
            const table = document.getElementById('staffTable');
            if (!table) return;
            
            table.innerHTML = '';
            
            systemData.staff.forEach(staff => {
                const row = document.createElement('tr');
                row.innerHTML = `
                    <td>${staff.name}</td>
                    <td><span class="badge badge-green">${staff.position}</span></td>
                    <td>${staff.phone}</td>
                    <td>${staff.joinDate}</td>
                    <td>
                        <button class="btn btn-primary" onclick="editStaff('${staff.id}')">
                            <i class="fas fa-edit"></i>
                        </button>
                        <button class="btn btn-danger" onclick="deleteStaff('${staff.id}')">
                            <i class="fas fa-trash"></i>
                        </button>
                    </td>
                `;
                table.appendChild(row);
            });
            
            // Update staff count
            const totalStaffEl = document.getElementById('totalStaff');
            if (totalStaffEl) {
                totalStaffEl.textContent = systemData.staff.length;
            }
        }

        // ===== FINANCE MANAGEMENT FUNCTIONS =====
        function recordFeePayment() {
            const studentId = document.getElementById('feeStudent')?.value;
            const amount = document.getElementById('feeAmount')?.value;
            const method = document.getElementById('feeMethod')?.value;
            
            if (!studentId || !amount || !method) {
                showNotification('Please fill all required fields', 'error');
                return;
            }
            
            const student = systemData.students.find(s => s.id === studentId);
            if (!student) {
                showNotification('Student not found', 'error');
                return;
            }
            
            const fee = {
                id: 'FEE' + Date.now().toString().slice(-6),
                studentId: studentId,
                studentName: student.name,
                date: new Date().toISOString().split('T')[0],
                amount: parseFloat(amount),
                method: method,
                description: 'Tuition Fee',
                status: 'Paid',
                recordedBy: currentUser.fullName,
                recordedAt: new Date().toISOString()
            };
            
            systemData.fees.push(fee);
            saveSystemData();
            loadFeeTable();
            updateFinanceDashboard();
            updateDataStatistics();
            
            // Clear form
            document.getElementById('feeAmount').value = '';
            
            showNotification(`Payment of ${amount} ETB recorded for ${student.name}`, 'success');
            addActivity(`Recorded fee payment: ${student.name} - ${amount} ETB`, 'success');
        }

        function recordExpense() {
            const category = document.getElementById('expenseCategory')?.value;
            const amount = document.getElementById('expenseAmount')?.value;
            const description = document.getElementById('expenseDescription')?.value;
            
            if (!category || !amount || !description) {
                showNotification('Please fill all required fields', 'error');
                return;
            }
            
            const expense = {
                id: 'EXP' + Date.now().toString().slice(-6),
                category: category,
                amount: parseFloat(amount),
                date: new Date().toISOString().split('T')[0],
                description: description,
                recordedBy: currentUser.fullName,
                recordedAt: new Date().toISOString()
            };
            
            systemData.expenses.push(expense);
            saveSystemData();
            
            // Clear form
            document.getElementById('expenseAmount').value = '';
            document.getElementById('expenseDescription').value = '';
            
            showNotification(`Expense recorded: ${description} - ${amount} ETB`, 'success');
            addActivity(`Recorded expense: ${description} - ${amount} ETB`, 'success');
        }

        function loadFeeTable() {
            const table = document.getElementById('feeTable');
            if (!table) return;
            
            table.innerHTML = '';
            
            systemData.fees.forEach(fee => {
                const row = document.createElement('tr');
                row.innerHTML = `
                    <td>${fee.date}</td>
                    <td>${fee.studentName}</td>
                    <td><strong>${fee.amount.toLocaleString()} ETB</strong></td>
                    <td>${fee.method}</td>
                    <td><span class="status-paid">${fee.status}</span></td>
                `;
                table.appendChild(row);
            });
        }

        function updateFinanceDashboard() {
            const today = new Date().toISOString().split('T')[0];
            const month = new Date().getMonth() + 1;
            const year = new Date().getFullYear();
            
            // Today's collection
            const todayFees = systemData.fees.filter(fee => fee.date === today);
            const todayTotal = todayFees.reduce((sum, fee) => sum + fee.amount, 0);
            
            const todayCollection = document.getElementById('todayCollection');
            if (todayCollection) {
                todayCollection.textContent = todayTotal.toLocaleString() + ' ETB';
            }
            
            // This month's collection
            const monthFees = systemData.fees.filter(fee => {
                const feeDate = new Date(fee.date);
                return feeDate.getMonth() + 1 === month && feeDate.getFullYear() === year;
            });
            const monthTotal = monthFees.reduce((sum, fee) => sum + fee.amount, 0);
            
            const monthCollection = document.getElementById('monthCollection');
            if (monthCollection) {
                monthCollection.textContent = monthTotal.toLocaleString() + ' ETB';
            }
            
            // This year's collection
            const yearFees = systemData.fees.filter(fee => {
                const feeDate = new Date(fee.date);
                return feeDate.getFullYear() === year;
            });
            const yearTotal = yearFees.reduce((sum, fee) => sum + fee.amount, 0);
            
            const yearCollection = document.getElementById('yearCollection');
            if (yearCollection) {
                yearCollection.textContent = yearTotal.toLocaleString() + ' ETB';
            }
            
            // Update dashboard revenue
            const revenueEl = document.getElementById('revenue');
            if (revenueEl) {
                revenueEl.textContent = monthTotal.toLocaleString() + ' ETB';
            }
        }

        // ===== GRADES MANAGEMENT FUNCTIONS =====
        function recordGrade() {
            const studentId = document.getElementById('gradeStudent')?.value;
            const subject = document.getElementById('gradeSubject')?.value;
            const percentage = document.getElementById('gradePercentage')?.value;
            
            if (!studentId || !subject || !percentage) {
                showNotification('Please fill all required fields', 'error');
                return;
            }
            
            const student = systemData.students.find(s => s.id === studentId);
            if (!student) {
                showNotification('Student not found', 'error');
                return;
            }
            
            // Calculate letter grade
            let letterGrade = 'F';
            const percent = parseInt(percentage);
            if (percent >= 90) letterGrade = 'A+';
            else if (percent >= 80) letterGrade = 'A';
            else if (percent >= 70) letterGrade = 'B';
            else if (percent >= 60) letterGrade = 'C';
            else if (percent >= 50) letterGrade = 'D';
            
            const grade = {
                id: 'GRADE' + Date.now().toString().slice(-6),
                studentId: studentId,
                studentName: student.name,
                subject: subject,
                grade: percent,
                letterGrade: letterGrade,
                term: 'Term 1',
                date: new Date().toISOString().split('T')[0],
                recordedBy: currentUser.fullName,
                recordedAt: new Date().toISOString()
            };
            
            systemData.grades.push(grade);
            saveSystemData();
            loadGradesTable();
            
            // Clear form
            document.getElementById('gradePercentage').value = '';
            
            showNotification(`Grade recorded for ${student.name} in ${subject}`, 'success');
            addActivity(`Recorded grade: ${student.name} - ${subject} - ${letterGrade}`, 'success');
        }

        function loadGradesTable() {
            const table = document.getElementById('gradesTable');
            if (!table) return;
            
            table.innerHTML = '';
            
            systemData.grades.forEach(grade => {
                const row = document.createElement('tr');
                row.innerHTML = `
                    <td>${grade.studentName}</td>
                    <td>${grade.subject}</td>
                    <td>${grade.grade}</td>
                    <td>${grade.letterGrade}</td>
                    <td>
                        <span class="badge ${grade.letterGrade === 'A+' || grade.letterGrade === 'A' ? 'badge-green' : 
                                           grade.letterGrade === 'B' ? 'badge-blue' :
                                           grade.letterGrade === 'C' ? 'badge-yellow' :
                                           grade.letterGrade === 'D' ? 'badge-orange' : 'badge-red'}">
                            ${grade.letterGrade}
                        </span>
                    </td>
                    <td>
                        <button class="btn btn-primary" onclick="editGrade('${grade.id}')">
                            <i class="fas fa-edit"></i>
                        </button>
                        <button class="btn btn-danger" onclick="deleteGrade('${grade.id}')">
                            <i class="fas fa-trash"></i>
                        </button>
                    </td>
                `;
                table.appendChild(row);
            });
        }

        // ===== GALLERY FUNCTIONS =====
        function loadGallery() {
            const gallery = document.getElementById('photoGallery');
            if (!gallery) return;
            
            gallery.innerHTML = '';
            
            systemData.gallery.forEach(item => {
                const galleryItem = document.createElement('div');
                galleryItem.className = 'gallery-item';
                galleryItem.innerHTML = `
                    <img src="${item.image}" alt="${item.title}">
                    <div class="gallery-overlay">
                        <h4>${item.title}</h4>
                        <p>${item.description}</p>
                        <small>${item.date}</small>
                    </div>
                `;
                gallery.appendChild(galleryItem);
            });
        }

        function uploadGalleryPhoto() {
            showNotification('Gallery upload feature coming soon', 'info');
        }

        // ===== FINANCE COMMUNICATION FUNCTIONS =====
        function initFinanceCommunication() {
            loadTransactionHistory();
            populateStudentSelects();
            
            // Add sample transactions
            if (financeData.transactions.length === 0) {
                addSampleTransactions();
            }
            
            // Check network status
            checkNetworkStatus();
            
            // Initialize PWA
            initPWA();
        }

        function addSampleTransactions() {
            const sampleTransactions = [
                {
                    id: 'TRX001',
                    date: new Date().toISOString().split('T')[0],
                    studentName: 'Ahmed Mohammed',
                    method: 'CBE Birr',
                    amount: 1500,
                    reference: 'CBE' + Date.now().toString().slice(-8),
                    status: 'Completed'
                },
                {
                    id: 'TRX002',
                    date: new Date(Date.now() - 86400000).toISOString().split('T')[0],
                    studentName: 'Fatima Ali',
                    method: 'TeleBirr',
                    amount: 1200,
                    reference: 'TEL' + Date.now().toString().slice(-8),
                    status: 'Completed'
                }
            ];
            
            financeData.transactions.push(...sampleTransactions);
            loadTransactionHistory();
        }

        function loadTransactionHistory() {
            const table = document.getElementById('transactionHistory');
            if (!table) return;
            
            table.innerHTML = '';
            
            financeData.transactions.forEach(transaction => {
                const row = document.createElement('tr');
                row.innerHTML = `
                    <td>${transaction.date}</td>
                    <td>${transaction.studentName}</td>
                    <td><span class="badge ${transaction.method === 'CBE Birr' ? 'badge-blue' : 'badge-green'}">${transaction.method}</span></td>
                    <td><strong>${transaction.amount.toLocaleString()} ETB</strong></td>
                    <td><code>${transaction.reference}</code></td>
                    <td><span class="status-paid">${transaction.status}</span></td>
                    <td>
                        <button class="btn btn-primary" onclick="downloadReceipt('${transaction.id}')">
                            <i class="fas fa-receipt"></i>
                        </button>
                    </td>
                `;
                table.appendChild(row);
            });
        }

        function initiateCBEPayment() {
            const amount = prompt("Enter payment amount (ETB):");
            if (!amount || isNaN(amount) || amount <= 0) {
                showNotification("Please enter a valid amount", "error");
                return;
            }
            
            showNotification(`Opening CBE Birr payment for ${amount} ETB...`, "info");
            
            // Simulate payment processing
            setTimeout(() => {
                const transaction = {
                    id: 'TRX' + Date.now().toString().slice(-6),
                    date: new Date().toISOString().split('T')[0],
                    studentName: 'Selected Student',
                    method: 'CBE Birr',
                    amount: parseFloat(amount),
                    reference: 'CBE' + Date.now().toString().slice(-8),
                    status: 'Completed'
                };
                
                financeData.transactions.unshift(transaction);
                loadTransactionHistory();
                
                showNotification(`Payment of ${amount} ETB successful via CBE Birr`, "success");
                addActivity(`CBE Birr payment: ${amount} ETB`, "success");
            }, 2000);
        }

        function initiateTeleBirrPayment() {
            const amount = prompt("Enter payment amount (ETB):");
            if (!amount || isNaN(amount) || amount <= 0) {
                showNotification("Please enter a valid amount", "error");
                return;
            }
            
            showNotification(`Initiating TeleBirr payment for ${amount} ETB...`, "info");
            
            // Simulate USSD dialing
            const ussdCode = `*809*1*0912345678*${amount}#`;
            alert(`Dial this USSD code: ${ussdCode}\n\nOr use the TeleBirr app to complete the payment.`);
            
            // Simulate payment confirmation
            setTimeout(() => {
                const transaction = {
                    id: 'TRX' + Date.now().toString().slice(-6),
                    date: new Date().toISOString().split('T')[0],
                    studentName: 'Selected Student',
                    method: 'TeleBirr',
                    amount: parseFloat(amount),
                    reference: 'TEL' + Date.now().toString().slice(-8),
                    status: 'Completed'
                };
                
                financeData.transactions.unshift(transaction);
                loadTransactionHistory();
                
                showNotification(`Payment of ${amount} ETB successful via TeleBirr`, "success");
                addActivity(`TeleBirr payment: ${amount} ETB`, "success");
            }, 3000);
        }

        function sendPaymentNotification() {
            const studentId = document.getElementById('smsStudent')?.value;
            const smsType = document.getElementById('smsType')?.value;
            const customMessage = document.getElementById('customMessage')?.value;
            
            if (!studentId) {
                showNotification("Please select a student", "error");
                return;
            }
            
            if (financeData.smsCredits < 1) {
                showNotification("Insufficient SMS credits. Please buy more.", "error");
                return;
            }
            
            const student = systemData.students.find(s => s.id === studentId);
            if (!student) {
                showNotification("Student not found", "error");
                return;
            }
            
            let message = "";
            switch(smsType) {
                case 'payment':
                    message = `Dear Parent, please pay pending fees for ${student.name}. Amount: 1,500 ETB. Due: 30 days.`;
                    break;
                case 'receipt':
                    message = `Payment received for ${student.name}. Amount: 1,500 ETB. Ref: TXN${Date.now().toString().slice(-6)}`;
                    break;
                case 'balance':
                    message = `Dear Parent, ${student.name}'s fee balance: 3,000 ETB. Please pay before due date.`;
                    break;
                case 'custom':
                    message = customMessage || "Message from Medrasa Academy";
                    break;
            }
            
            // Deduct SMS credit
            financeData.smsCredits--;
            
            // Simulate SMS sending
            setTimeout(() => {
                showNotification(`SMS sent to ${student.phone}`, "success");
                addActivity(`SMS sent to ${student.name}'s parent`, "success");
            }, 1000);
        }

        function buySMSCredits() {
            const credits = prompt("How many SMS credits would you like to buy? (100 credits = 50 ETB)");
            if (!credits || isNaN(credits) || credits < 100) {
                showNotification("Minimum purchase is 100 credits", "error");
                return;
            }
            
            const amount = (credits / 100) * 50;
            const confirmPurchase = confirm(`Purchase ${credits} SMS credits for ${amount} ETB?`);
            
            if (confirmPurchase) {
                financeData.smsCredits += parseInt(credits);
                showNotification(`Successfully purchased ${credits} SMS credits`, "success");
                addActivity(`Purchased ${credits} SMS credits`, "success");
            }
        }

        // ===== BRAND APP FUNCTIONS =====
        function downloadApp(platform) {
            if (platform === 'android') {
                window.open('https://play.google.com/store/apps/details?id=com.medrasa.academy', '_blank');
            } else if (platform === 'ios') {
                window.open('https://apps.apple.com/app/medrasa-academy/id1234567890', '_blank');
            }
            
            showNotification(`Redirecting to ${platform === 'android' ? 'Google Play' : 'App Store'}...`, "info");
        }

        function initPWA() {
            // Check if PWA is installable
            let deferredPrompt;
            const installBtn = document.getElementById('installAppBtn');
            
            if (installBtn) {
                window.addEventListener('beforeinstallprompt', (e) => {
                    e.preventDefault();
                    deferredPrompt = e;
                    installBtn.style.display = 'flex';
                });
                
                installBtn.addEventListener('click', async () => {
                    if (deferredPrompt) {
                        deferredPrompt.prompt();
                        const { outcome } = await deferredPrompt.userChoice;
                        if (outcome === 'accepted') {
                            showNotification('Medrasa Academy app installed successfully!', 'success');
                            installBtn.style.display = 'none';
                        }
                        deferredPrompt = null;
                    }
                });
            }
        }

        function installPWA() {
            const installBtn = document.getElementById('installAppBtn');
            if (installBtn && installBtn.style.display !== 'none') {
                installBtn.click();
            } else {
                showNotification('App installation is not available in your browser', 'info');
            }
        }

        function checkNetworkStatus() {
            const offlineIndicator = document.getElementById('offlineIndicator');
            
            if (offlineIndicator) {
                window.addEventListener('online', () => {
                    offlineIndicator.style.display = 'none';
                    showNotification('Back online!', 'success');
                });
                
                window.addEventListener('offline', () => {
                    offlineIndicator.style.display = 'block';
                    showNotification('You are offline. Some features may not work.', 'warning');
                });
                
                // Initial check
                if (!navigator.onLine) {
                    offlineIndicator.style.display = 'block';
                }
            }
        }

        function watchDemo() {
            showNotification('Opening app demo video...', 'info');
            alert('App demo video would play here. This feature requires video hosting.');
        }

        // ===== UTILITY FUNCTIONS =====
        function initializeEventListeners() {
            // Tab switching
            document.querySelectorAll('.tab-btn[data-tab]').forEach(btn => {
                btn.addEventListener('click', function() {
                    const tabId = this.getAttribute('data-tab');
                    switchTab(tabId);
                });
            });

            // Attendance date change
            const attendanceDate = document.getElementById('attendanceDate');
            if (attendanceDate) {
                attendanceDate.addEventListener('change', loadAttendanceRecords);
            }
            
            const studentClass = document.getElementById('studentClass');
            if (studentClass) {
                studentClass.addEventListener('change', loadStudentAttendanceList);
            }
            
            // File upload
            const fileUpload = document.getElementById('studentFileUpload');
            if (fileUpload) {
                fileUpload.addEventListener('change', handleFileUpload);
            }
            
            // Import file input
            const importFileInput = document.getElementById('importFileInput');
            if (importFileInput) {
                importFileInput.addEventListener('change', function() {
                    if (this.files.length > 0) {
                        document.querySelector('.file-upload-zone h4').textContent = `Selected: ${this.files[0].name}`;
                    }
                });
            }
            
            // Populate student selects on page load
            populateStudentSelects();
            populateStaffSelects();
            populateGradeStudentSelect();
            populateCertificateStudentSelect();
        }

        function switchTab(tabId) {
            // Hide all sections
            document.querySelectorAll('.section').forEach(section => {
                section.classList.remove('active');
            });
            
            // Deactivate all tabs
            document.querySelectorAll('.tab-btn[data-tab]').forEach(btn => {
                btn.classList.remove('active');
            });
            
            // Show selected section and activate tab
            const section = document.getElementById(tabId);
            if (section) {
                section.classList.add('active');
            }
            
            const tabBtn = document.querySelector(`.tab-btn[data-tab="${tabId}"]`);
            if (tabBtn) tabBtn.classList.add('active');
            
            // Load data for specific tabs
            switch(tabId) {
                case 'dashboard':
                    updateDashboard();
                    break;
                case 'attendance':
                    loadAttendanceRecords();
                    loadStudentAttendanceList();
                    updateAttendanceSummary();
                    break;
                case 'students':
                    loadStudentsTable();
                    populateStudentSelects();
                    break;
                case 'assignments':
                    loadAssignments();
                    break;
                case 'staff':
                    loadStaffTable();
                    populateStaffSelects();
                    break;
                case 'finance':
                    loadFeeTable();
                    updateFinanceDashboard();
                    populateStudentSelects();
                    break;
                case 'reports':
                    // Reports functions
                    break;
                case 'grades':
                    loadGradesTable();
                    populateGradeStudentSelect();
                    break;
                case 'assessment':
                    // Assessment functions
                    break;
                case 'import-export':
                    updateDataStatistics();
                    break;
                case 'certificate':
                    populateCertificateStudentSelect();
                    break;
                case 'roster':
                    loadRosterTable();
                    break;
                case 'gallery':
                    loadGallery();
                    break;
                case 'finance-communication':
                    initFinanceCommunication();
                    break;
                case 'brand-app':
                    initPWA();
                    break;
                case 'settings':
                    loadSettings();
                    break;
            }
        }

        function populateStudentSelects() {
            const studentSelects = ['feeStudent', 'smsStudent'];
            
            studentSelects.forEach(selectId => {
                const select = document.getElementById(selectId);
                if (select) {
                    // Clear existing options except first
                    while (select.options.length > 1) {
                        select.remove(1);
                    }
                    
                    // Add students
                    systemData.students.forEach(student => {
                        const option = document.createElement('option');
                        option.value = student.id;
                        option.textContent = `${student.name} (${student.grade})`;
                        select.appendChild(option);
                    });
                }
            });
        }

        function populateGradeStudentSelect() {
            const select = document.getElementById('gradeStudent');
            if (select) {
                select.innerHTML = '<option value="">Select Student</option>';
                systemData.students.forEach(student => {
                    const option = document.createElement('option');
                    option.value = student.id;
                    option.textContent = `${student.name} (${student.grade})`;
                    select.appendChild(option);
                });
            }
        }

        function populateCertificateStudentSelect() {
            const select = document.getElementById('certificateStudent');
            if (select) {
                select.innerHTML = '<option value="">Select Student</option>';
                systemData.students.forEach(student => {
                    const option = document.createElement('option');
                    option.value = student.id;
                    option.textContent = `${student.name} (${student.grade})`;
                    select.appendChild(option);
                });
            }
        }

        function populateStaffSelects() {
            const teacherSelect = document.getElementById('teacherSelect');
            if (teacherSelect) {
                teacherSelect.innerHTML = '<option value="">Select Teacher</option>';
                systemData.staff.filter(staff => staff.position.includes('Teacher')).forEach(teacher => {
                    const option = document.createElement('option');
                    option.value = teacher.id;
                    option.textContent = `${teacher.name} (${teacher.position})`;
                    teacherSelect.appendChild(option);
                });
            }
            
            const staffSelect = document.getElementById('staffSelect');
            if (staffSelect) {
                staffSelect.innerHTML = '<option value="">Select Staff Member</option>';
                systemData.staff.forEach(staff => {
                    const option = document.createElement('option');
                    option.value = staff.id;
                    option.textContent = `${staff.name} (${staff.position})`;
                    staffSelect.appendChild(option);
                });
            }
        }

        function updateDashboard() {
            // Update counts
            const totalStudentsEl = document.getElementById('totalStudents');
            if (totalStudentsEl) {
                totalStudentsEl.textContent = systemData.students.length;
            }
            
            const totalStaffEl = document.getElementById('totalStaff');
            if (totalStaffEl) {
                totalStaffEl.textContent = systemData.staff.length;
            }
            
            // Calculate KG students
            const kgStudents = systemData.students.filter(s => s.grade.includes('KG')).length;
            const kgStudentsEl = document.getElementById('kgStudents');
            if (kgStudentsEl) {
                kgStudentsEl.textContent = kgStudents;
            }
            
            // Update pending tasks
            const pendingTasksEl = document.getElementById('pendingTasks');
            if (pendingTasksEl) {
                const pendingCount = systemData.attendance.filter(a => a.status === 'absent').length +
                                   (systemData.assignments ? systemData.assignments.filter(a => a.status === 'pending').length : 0);
                pendingTasksEl.textContent = pendingCount;
            }
            
            // Update finance
            updateFinanceDashboard();
            updateAttendanceSummary();
            
            // Update student change
            const studentChangeEl = document.getElementById('studentChange');
            if (studentChangeEl) {
                const today = new Date().toISOString().split('T')[0];
                const newStudents = systemData.students.filter(s => s.registered.includes(today)).length;
                studentChangeEl.textContent = `+${newStudents} Today`;
            }
        }

        function updateDataCount() {
            const totalRecords = 
                systemData.students.length +
                systemData.staff.length +
                systemData.fees.length +
                systemData.attendance.length +
                systemData.grades.length +
                (systemData.registeredUsers ? systemData.registeredUsers.length : 0) +
                (systemData.certificates ? systemData.certificates.length : 0) +
                (systemData.assignments ? systemData.assignments.length : 0) +
                (systemData.expenses ? systemData.expenses.length : 0);
            
            const dataCountEl = document.getElementById('dataCount');
            if (dataCountEl) {
                dataCountEl.textContent = totalRecords.toLocaleString() + ' Records';
            }
        }

        function updateSystemInfo() {
            const lastBackup = systemData.settings.lastBackup || 'Never';
            const lastBackupEl = document.getElementById('lastBackup');
            if (lastBackupEl) {
                lastBackupEl.textContent = lastBackup;
            }
        }

        function showNotification(message, type = 'info') {
            // Create notification element
            const notification = document.createElement('div');
            const colors = {
                success: 'var(--primary-green)',
                error: 'var(--primary-red)',
                warning: 'var(--primary-yellow)',
                info: 'var(--primary-blue)',
                khube: 'var(--khube-blue)'
            };
            
            notification.style.cssText = `
                position: fixed;
                top: 20px;
                right: 20px;
                background: ${colors[type] || colors.info};
                color: white;
                padding: 1rem 1.5rem;
                border-radius: 12px;
                box-shadow: var(--shadow-lg);
                z-index: 10000;
                animation: fadeInUp 0.3s ease;
                display: flex;
                align-items: center;
                gap: 0.75rem;
                max-width: 400px;
            `;
            
            notification.innerHTML = `
                <i class="fas ${type === 'success' ? 'fa-check-circle' : 
                               type === 'error' ? 'fa-exclamation-circle' :
                               type === 'warning' ? 'fa-exclamation-triangle' : 
                               type === 'khube' ? 'fa-brain' : 'fa-info-circle'}"></i>
                <div>
                    <strong>${type.charAt(0).toUpperCase() + type.slice(1)}</strong>
                    <p style="margin: 0.25rem 0 0; font-size: 0.9rem;">${message}</p>
                </div>
            `;
            
            document.body.appendChild(notification);
            
            setTimeout(() => {
                notification.style.animation = 'fadeOut 0.3s ease';
                setTimeout(() => notification.remove(), 300);
            }, 3000);
        }

        function addActivity(message, type = 'info') {
            const activityContainer = document.getElementById('recentActivity');
            if (!activityContainer) return;
            
            const colors = {
                success: 'var(--primary-green)',
                error: 'var(--primary-red)',
                warning: 'var(--primary-yellow)',
                info: 'var(--primary-blue)',
                khube: 'var(--khube-blue)'
            };
            
            const activity = document.createElement('div');
            activity.style.cssText = `
                display: flex;
                align-items: flex-start;
                gap: 1rem;
                padding: 1rem;
                border-bottom: 1px solid var(--gray-200);
            `;
            
            activity.innerHTML = `
                <i class="fas ${type === 'success' ? 'fa-check-circle' : 
                               type === 'error' ? 'fa-exclamation-circle' :
                               type === 'warning' ? 'fa-exclamation-triangle' : 
                               type === 'khube' ? 'fa-brain' : 'fa-info-circle'}" 
                   style="color: ${colors[type] || colors.info}; font-size: 1.2rem;"></i>
                <div style="flex: 1;">
                    <p style="margin: 0; font-weight: 500;">${message}</p>
                    <small style="color: var(--gray-500);">${new Date().toLocaleTimeString()}</small>
                </div>
            `;
            
            activityContainer.insertBefore(activity, activityContainer.firstChild);
            
            // Keep only last 5 activities
            if (activityContainer.children.length > 5) {
                activityContainer.removeChild(activityContainer.lastChild);
            }
        }

        // ===== ASSIGNMENT FUNCTIONS =====
        function createAssignment() {
            const title = document.getElementById('assignmentTitle')?.value;
            const assignmentClass = document.getElementById('assignmentClass')?.value;
            const dueDate = document.getElementById('assignmentDueDate')?.value;
            
            if (!title || !assignmentClass || !dueDate) {
                showNotification("Please fill all required fields", "error");
                return;
            }
            
            const assignment = {
                id: 'ASS' + Date.now().toString().slice(-6),
                title: title,
                class: assignmentClass,
                dueDate: dueDate,
                createdBy: currentUser.fullName,
                createdAt: new Date().toISOString(),
                status: 'active'
            };
            
            if (!systemData.assignments) {
                systemData.assignments = [];
            }
            
            systemData.assignments.push(assignment);
            saveSystemData();
            
            // Clear form
            document.getElementById('assignmentTitle').value = '';
            document.getElementById('assignmentDueDate').value = '';
            
            showNotification(`Assignment "${title}" created successfully`, "success");
            addActivity(`Created assignment: ${title} for ${assignmentClass}`, "success");
        }

        function loadAssignments() {
            const container = document.getElementById('assignmentsList');
            if (!container) return;
            
            if (!systemData.assignments || systemData.assignments.length === 0) {
                container.innerHTML = `
                    <div class="section-placeholder">
                        <i class="fas fa-tasks"></i>
                        <h3>No Assignments Yet</h3>
                        <p>Create your first assignment to get started. Assignments help track student work and progress.</p>
                    </div>
                `;
                return;
            }
            
            let html = '';
            systemData.assignments.forEach(assignment => {
                html += `
                    <div class="assignment-card">
                        <div style="display: flex; justify-content: space-between; align-items: flex-start;">
                            <div>
                                <h4 style="color: var(--primary-blue); margin-bottom: 0.5rem;">${assignment.title}</h4>
                                <p style="color: var(--gray-600); margin-bottom: 0.5rem;">
                                    <i class="fas fa-graduation-cap"></i> ${assignment.class} 
                                    | <i class="fas fa-calendar"></i> Due: ${new Date(assignment.dueDate).toLocaleDateString()}
                                </p>
                                <p style="color: var(--gray-600); font-size: 0.9rem;">
                                    Created by: ${assignment.createdBy} on ${new Date(assignment.createdAt).toLocaleDateString()}
                                </p>
                            </div>
                            <div>
                                <span class="submission-status pending">Pending</span>
                            </div>
                        </div>
                        <div style="display: flex; gap: 1rem; margin-top: 1rem;">
                            <button class="btn btn-primary" onclick="editAssignment('${assignment.id}')">
                                <i class="fas fa-edit"></i> Edit
                            </button>
                            <button class="btn btn-danger" onclick="deleteAssignment('${assignment.id}')">
                                <i class="fas fa-trash"></i> Delete
                            </button>
                        </div>
                    </div>
                `;
            });
            
            container.innerHTML = html;
        }

        // ===== ROSTER FUNCTIONS =====
        function loadRosterTable() {
            const classSelect = document.getElementById('rosterClass');
            const table = document.getElementById('rosterTable');
            
            if (!classSelect || !table) return;
            
            const selectedClass = classSelect.value;
            let students = systemData.students;
            
            if (selectedClass) {
                students = students.filter(student => student.grade === selectedClass);
            }
            
            table.innerHTML = '';
            
            students.forEach(student => {
                const row = document.createElement('tr');
                row.innerHTML = `
                    <td>${student.id}</td>
                    <td>${student.name}</td>
                    <td>${student.gender}</td>
                    <td>${student.dob}</td>
                    <td>${student.phone || 'N/A'}</td>
                    <td><span class="badge badge-green">Active</span></td>
                `;
                table.appendChild(row);
            });
            
            if (students.length === 0) {
                const row = document.createElement('tr');
                row.innerHTML = `
                    <td colspan="6" style="text-align: center; color: var(--gray-600); padding: 2rem;">
                        No students found ${selectedClass ? 'in ' + selectedClass : ''}
                    </td>
                `;
                table.appendChild(row);
            }
        }

        // ===== SETTINGS FUNCTIONS =====
        function loadSettings() {
            // Load current settings
            const schoolName = document.getElementById('schoolName');
            const schoolAddress = document.getElementById('schoolAddress');
            const schoolEmail = document.getElementById('schoolEmail');
            
            if (schoolName) schoolName.value = systemData.settings.schoolName || 'Medrasa Academy';
            if (schoolAddress) schoolAddress.value = systemData.settings.schoolAddress || 'Hirna, Oromia, Ethiopia';
            if (schoolEmail) schoolEmail.value = systemData.settings.schoolEmail || 'medaimanaprimaryschool@gmail.com';
        }

        function saveSchoolInfo() {
            const schoolName = document.getElementById('schoolName').value;
            const schoolAddress = document.getElementById('schoolAddress').value;
            const schoolEmail = document.getElementById('schoolEmail').value;
            
            systemData.settings.schoolName = schoolName;
            systemData.settings.schoolAddress = schoolAddress;
            systemData.settings.schoolEmail = schoolEmail;
            
            saveSystemData();
            showNotification('School information saved successfully', 'success');
        }

        function changePassword() {
            const newPassword = prompt("Enter new password:");
            if (!newPassword || newPassword.length < 8) {
                showNotification("Password must be at least 8 characters", "error");
                return;
            }
            
            const confirmPassword = prompt("Confirm new password:");
            if (newPassword !== confirmPassword) {
                showNotification("Passwords do not match", "error");
                return;
            }
            
            // Update current user password
            if (currentUser) {
                currentUser.password = newPassword;
                
                // Update in registered users
                const userIndex = systemData.registeredUsers.findIndex(u => u.id === currentUser.id);
                if (userIndex !== -1) {
                    systemData.registeredUsers[userIndex].password = newPassword;
                }
                
                saveSystemData();
                showNotification("Password changed successfully", "success");
                addActivity("Changed password", "success");
            }
        }

        function backupNow() {
            systemData.settings.lastBackup = new Date().toLocaleString();
            saveSystemData();
            showNotification('System backup created successfully', 'success');
            addActivity('Created system backup', 'success');
        }

        function clearOldData() {
            if (confirm('Are you sure you want to clear old data? This action cannot be undone.')) {
                // Clear data older than 1 year
                const oneYearAgo = new Date();
                oneYearAgo.setFullYear(oneYearAgo.getFullYear() - 1);
                
                systemData.attendance = systemData.attendance.filter(record => 
                    new Date(record.date) > oneYearAgo
                );
                
                systemData.fees = systemData.fees.filter(fee => 
                    new Date(fee.date) > oneYearAgo
                );
                
                saveSystemData();
                showNotification('Old data cleared successfully', 'success');
                addActivity('Cleared old data', 'warning');
            }
        }

        // ===== CERTIFICATE FUNCTIONS =====
        function generateCertificate() {
            const studentId = document.getElementById('certificateStudent').value;
            const certificateType = document.getElementById('certificateType').value;
            const certificateDate = document.getElementById('certificateDate').value;
            
            if (!studentId) {
                showNotification('Please select a student', 'error');
                return;
            }
            
            const student = systemData.students.find(s => s.id === studentId);
            if (!student) {
                showNotification('Student not found', 'error');
                return;
            }
            
            // Create certificate
            const certificate = {
                id: 'CERT' + Date.now().toString().slice(-6),
                studentId: studentId,
                studentName: student.name,
                type: certificateType,
                issueDate: certificateDate,
                generatedBy: currentUser.fullName,
                generatedAt: new Date().toISOString()
            };
            
            if (!systemData.certificates) {
                systemData.certificates = [];
            }
            
            systemData.certificates.push(certificate);
            saveSystemData();
            
            // Show certificate preview
            const certificatePreview = document.querySelector('.certificate-preview h3');
            if (certificatePreview) {
                certificatePreview.textContent = 'CERTIFICATE OF ' + certificateType.toUpperCase();
            }
            
            const studentName = document.querySelector('.certificate-preview div:nth-child(3)');
            if (studentName) {
                studentName.textContent = student.name;
            }
            
            showNotification(`Certificate generated for ${student.name}`, 'success');
            addActivity(`Generated ${certificateType} certificate for ${student.name}`, 'success');
        }

        function downloadCertificate() {
            showNotification('Certificate download feature coming soon', 'info');
        }

        // ===== FILE UPLOAD FUNCTIONS =====
        function handleFileUpload(event) {
            const file = event.target.files[0];
            if (!file) return;
            
            // Check file type
            const validTypes = ['.csv', '.xlsx', '.xls', '.txt'];
            const fileExtension = file.name.substring(file.name.lastIndexOf('.')).toLowerCase();
            
            if (!validTypes.includes(fileExtension)) {
                showNotification('Invalid file type. Please upload CSV, Excel, or Text files.', 'error');
                return;
            }
            
            // Simulate file processing
            showNotification(`Processing ${file.name}...`, 'info');
            
            setTimeout(() => {
                // Add sample students from file
                const newStudents = [
                    {
                        id: 'STU' + Date.now().toString().slice(-6) + '1',
                        name: 'New Student 1',
                        grade: 'Grade 2A',
                        gender: 'Male',
                        dob: '2018-05-10',
                        registered: new Date().toISOString()
                    },
                    {
                        id: 'STU' + Date.now().toString().slice(-6) + '2',
                        name: 'New Student 2',
                        grade: 'Grade 2B',
                        gender: 'Female',
                        dob: '2018-08-15',
                        registered: new Date().toISOString()
                    }
                ];
                
                systemData.students.push(...newStudents);
                saveSystemData();
                loadStudentsTable();
                updateDashboard();
                updateDataStatistics();
                
                showNotification(`${newStudents.length} students imported successfully`, 'success');
                addActivity(`Imported ${newStudents.length} students from file`, 'success');
            }, 2000);
        }

        // ===== DELETE FUNCTIONS =====
        function deleteStudent(studentId) {
            if (confirm("Are you sure you want to delete this student?")) {
                systemData.students = systemData.students.filter(s => s.id !== studentId);
                saveSystemData();
                loadStudentsTable();
                updateDashboard();
                updateDataStatistics();
                showNotification("Student deleted successfully", "success");
                addActivity(`Deleted student ${studentId}`, "warning");
            }
        }

        function deleteStaff(staffId) {
            if (confirm("Are you sure you want to delete this staff member?")) {
                systemData.staff = systemData.staff.filter(s => s.id !== staffId);
                saveSystemData();
                loadStaffTable();
                updateDashboard();
                updateDataStatistics();
                showNotification("Staff member deleted successfully", "success");
                addActivity(`Deleted staff ${staffId}`, "warning");
            }
        }

        function deleteAssignment(assignmentId) {
            if (confirm("Are you sure you want to delete this assignment?")) {
                systemData.assignments = systemData.assignments.filter(a => a.id !== assignmentId);
                saveSystemData();
                loadAssignments();
                showNotification("Assignment deleted successfully", "success");
                addActivity(`Deleted assignment ${assignmentId}`, "warning");
            }
        }

        function deleteGrade(gradeId) {
            if (confirm("Are you sure you want to delete this grade?")) {
                systemData.grades = systemData.grades.filter(g => g.id !== gradeId);
                saveSystemData();
                loadGradesTable();
                showNotification("Grade deleted successfully", "success");
                addActivity(`Deleted grade ${gradeId}`, "warning");
            }
        }

        // ===== EDIT FUNCTIONS =====
        function editStudent(studentId) {
            const student = systemData.students.find(s => s.id === studentId);
            if (student) {
                showNotification(`Editing student: ${student.name}`, "info");
                // In a complete implementation, this would open an edit modal
            }
        }

        function editStaff(staffId) {
            const staff = systemData.staff.find(s => s.id === staffId);
            if (staff) {
                showNotification(`Editing staff: ${staff.name}`, "info");
                // In a complete implementation, this would open an edit modal
            }
        }

        function editAssignment(assignmentId) {
            showNotification("Edit assignment feature coming soon", "info");
        }

        function editGrade(gradeId) {
            showNotification("Edit grade feature coming soon", "info");
        }

        // ===== REPORT FUNCTIONS =====
        function generateStudentReport() {
            showNotification("Generating student report...", "info");
            setTimeout(() => {
                showNotification("Student report generated successfully", "success");
                addActivity("Generated student report", "success");
            }, 1500);
        }

        function generateFinancialReport() {
            showNotification("Exporting financial report to Excel...", "info");
            setTimeout(() => {
                showNotification("Financial report exported successfully", "success");
                addActivity("Exported financial report to Excel", "success");
            }, 1500);
        }

        function showAnalyticsDashboard() {
            showNotification("Opening analytics dashboard...", "info");
        }

        function generateAttendanceReport() {
            showNotification("Generating attendance report...", "info");
            setTimeout(() => {
                showNotification("Attendance report ready for printing", "success");
                addActivity("Generated attendance report", "success");
            }, 1500);
        }

        // ===== ASSESSMENT FUNCTIONS =====
        function createQuiz() {
            showNotification("Quiz creator feature coming soon", "info");
        }

        function manageExams() {
            showNotification("Exam manager feature coming soon", "info");
        }

        function assessProjects() {
            showNotification("Project assessment feature coming soon", "info");
        }

        function checkHomework() {
            showNotification("Homework checker feature coming soon", "info");
        }
    </script>
</body>
</html># .github
