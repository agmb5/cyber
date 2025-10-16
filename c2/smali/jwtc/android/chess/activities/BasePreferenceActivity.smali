.class public Ljwtc/android/chess/activities/BasePreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "BasePreferenceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 10
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    invoke-virtual {p0}, Ljwtc/android/chess/activities/BasePreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object p1

    const-string v0, "ChessPlayer"

    .line 13
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    return-void
.end method
