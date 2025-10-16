.class public Ljwtc/android/chess/ChessPreferences;
.super Ljwtc/android/chess/activities/BasePreferenceActivity;
.source "ChessPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static REQUEST_SOUND:I = 0x1

.field private static TAG:Ljava/lang/String; = "ChessPreferences"


# instance fields
.field private _colorScheme:I

.field private _uriNotification:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljwtc/android/chess/activities/BasePreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljwtc/android/chess/ChessPreferences;)Landroid/net/Uri;
    .locals 0

    .line 18
    iget-object p0, p0, Ljwtc/android/chess/ChessPreferences;->_uriNotification:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 18
    sget v0, Ljwtc/android/chess/ChessPreferences;->REQUEST_SOUND:I

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 61
    sget v0, Ljwtc/android/chess/ChessPreferences;->REQUEST_SOUND:I

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const-string p1, "android.intent.extra.ringtone.PICKED_URI"

    .line 63
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Ljwtc/android/chess/ChessPreferences;->_uriNotification:Landroid/net/Uri;

    const/4 p1, 0x0

    const-string p2, "ChessPlayer"

    .line 65
    invoke-virtual {p0, p2, p1}, Ljwtc/android/chess/ChessPreferences;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 66
    iget-object p2, p0, Ljwtc/android/chess/ChessPreferences;->_uriNotification:Landroid/net/Uri;

    const-string p3, "NotificationUri"

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 67
    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 71
    :goto_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 72
    sget-object p1, Ljwtc/android/chess/ChessPreferences;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Sound "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Ljwtc/android/chess/ChessPreferences;->_uriNotification:Landroid/net/Uri;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 27
    invoke-super {p0, p1}, Ljwtc/android/chess/activities/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Ljwtc/android/chess/ChessPreferences;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object p1

    const-string v0, "ChessPlayer"

    .line 30
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 33
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    const-string v0, "ColorScheme"

    const/4 v1, 0x0

    .line 34
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ljwtc/android/chess/ChessPreferences;->_colorScheme:I

    const-string v0, "NotificationUri"

    const-string v2, ""

    .line 35
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Ljwtc/android/chess/ChessPreferences;->_uriNotification:Landroid/net/Uri;

    const v0, 0x7f110002

    .line 37
    invoke-virtual {p0, v0}, Ljwtc/android/chess/ChessPreferences;->addPreferencesFromResource(I)V

    .line 39
    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const-string p1, "soundHandle"

    .line 41
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ChessPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 42
    new-instance v0, Ljwtc/android/chess/ChessPreferences$1;

    invoke-direct {v0, p0}, Ljwtc/android/chess/ChessPreferences$1;-><init>(Ljwtc/android/chess/ChessPreferences;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 57
    invoke-virtual {p0, v1}, Ljwtc/android/chess/ChessPreferences;->setResult(I)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "localelanguage"

    .line 80
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 81
    sget-object p1, Ljwtc/android/chess/ChessPreferences;->TAG:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 82
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ChessPreferences;->setResult(I)V

    :cond_0
    return-void
.end method
