.class public Ljwtc/android/chess/activities/GlobalPreferencesActivity;
.super Ljwtc/android/chess/activities/BasePreferenceActivity;
.source "GlobalPreferencesActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljwtc/android/chess/activities/BasePreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 10
    invoke-super {p0, p1}, Ljwtc/android/chess/activities/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f110001

    .line 12
    invoke-virtual {p0, p1}, Ljwtc/android/chess/activities/GlobalPreferencesActivity;->addPreferencesFromResource(I)V

    return-void
.end method
