.class public Ljwtc/android/chess/HtmlActivity;
.super Ljwtc/android/chess/activities/BaseActivity;
.source "HtmlActivity.java"


# static fields
.field public static HELP_MODE:Ljava/lang/String; = "HELP_MODE"

.field public static final TAG:Ljava/lang/String; = "HtmlActivity"


# instance fields
.field private _TVversionName:Landroid/widget/TextView;

.field private _lang:Ljava/lang/String;

.field private _webview:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljwtc/android/chess/activities/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 31
    invoke-super {p0, p1}, Ljwtc/android/chess/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0024

    .line 33
    invoke-virtual {p0, p1}, Ljwtc/android/chess/HtmlActivity;->setContentView(I)V

    .line 36
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "es"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 37
    iput-object v0, p0, Ljwtc/android/chess/HtmlActivity;->_lang:Ljava/lang/String;

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "it"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 39
    iput-object v0, p0, Ljwtc/android/chess/HtmlActivity;->_lang:Ljava/lang/String;

    goto :goto_0

    .line 40
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 41
    iput-object v0, p0, Ljwtc/android/chess/HtmlActivity;->_lang:Ljava/lang/String;

    goto :goto_0

    .line 42
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ru"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 43
    iput-object v0, p0, Ljwtc/android/chess/HtmlActivity;->_lang:Ljava/lang/String;

    goto :goto_0

    .line 44
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "zh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 45
    iput-object v0, p0, Ljwtc/android/chess/HtmlActivity;->_lang:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string p1, "en"

    .line 47
    iput-object p1, p0, Ljwtc/android/chess/HtmlActivity;->_lang:Ljava/lang/String;

    :goto_0
    const p1, 0x7f0800ae

    .line 49
    invoke-virtual {p0, p1}, Ljwtc/android/chess/HtmlActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Ljwtc/android/chess/HtmlActivity;->_webview:Landroid/webkit/WebView;

    const p1, 0x7f080179

    .line 51
    invoke-virtual {p0, p1}, Ljwtc/android/chess/HtmlActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ljwtc/android/chess/HtmlActivity;->_TVversionName:Landroid/widget/TextView;

    const v0, 0x7f0e01e6

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "9.0.0"

    aput-object v3, v1, v2

    .line 52
    invoke-virtual {p0, v0, v1}, Ljwtc/android/chess/HtmlActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 58
    invoke-super {p0}, Ljwtc/android/chess/activities/BaseActivity;->onResume()V

    .line 60
    invoke-virtual {p0}, Ljwtc/android/chess/HtmlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 65
    sget-object v1, Ljwtc/android/chess/HtmlActivity;->HELP_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v1, p0, Ljwtc/android/chess/HtmlActivity;->_TVversionName:Landroid/widget/TextView;

    const-string v2, "about"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    iget-object v1, p0, Ljwtc/android/chess/HtmlActivity;->_webview:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file:///android_asset/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljwtc/android/chess/HtmlActivity;->_lang:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".html"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
