.class public Lcom/dozingcatsoftware/bouncy/BouncyPreferences;
.super Landroid/preference/PreferenceActivity;
.source "BouncyPreferences.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private static supportsHapticFeedback(Landroid/content/Context;)Z
    .locals 3

    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    return v1

    .line 22
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_2

    const-string v0, "vibrator"

    .line 23
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    if-eqz p0, :cond_1

    .line 24
    invoke-virtual {p0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static supportsMultitouch()Z
    .locals 2

    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const/high16 p1, 0x7f080000

    .line 33
    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/bouncy/BouncyPreferences;->addPreferencesFromResource(I)V

    .line 35
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/BouncyPreferences;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 40
    :cond_0
    invoke-static {}, Lcom/dozingcatsoftware/bouncy/BouncyPreferences;->supportsMultitouch()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string p1, "independentFlippers"

    .line 41
    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/bouncy/BouncyPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    .line 42
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 43
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 45
    :cond_1
    invoke-static {p0}, Lcom/dozingcatsoftware/bouncy/BouncyPreferences;->supportsHapticFeedback(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "haptic"

    .line 46
    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/bouncy/BouncyPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    .line 47
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 48
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x2c

    if-ne p1, v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/BouncyPreferences;->finish()V

    const/4 p1, 0x1

    return p1

    .line 59
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
