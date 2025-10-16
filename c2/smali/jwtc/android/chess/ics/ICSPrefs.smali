.class public Ljwtc/android/chess/ics/ICSPrefs;
.super Ljwtc/android/chess/activities/BasePreferenceActivity;
.source "ICSPrefs.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljwtc/android/chess/activities/BasePreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 15
    invoke-super {p0, p1}, Ljwtc/android/chess/activities/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f110003

    .line 17
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSPrefs;->addPreferencesFromResource(I)V

    const-string p1, "icscustomcommandHandle"

    .line 19
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSPrefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 20
    new-instance v0, Ljwtc/android/chess/ics/ICSPrefs$1;

    invoke-direct {v0, p0}, Ljwtc/android/chess/ics/ICSPrefs$1;-><init>(Ljwtc/android/chess/ics/ICSPrefs;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method
