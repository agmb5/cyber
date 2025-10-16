.class Ljwtc/android/chess/ics/ICSPrefs$1;
.super Ljava/lang/Object;
.source "ICSPrefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/ics/ICSPrefs;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/ics/ICSPrefs;


# direct methods
.method constructor <init>(Ljwtc/android/chess/ics/ICSPrefs;)V
    .locals 0

    .line 20
    iput-object p1, p0, Ljwtc/android/chess/ics/ICSPrefs$1;->this$0:Ljwtc/android/chess/ics/ICSPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .line 22
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ljwtc/android/chess/ics/ICSPrefs$1;->this$0:Ljwtc/android/chess/ics/ICSPrefs;

    const-class v1, Ljwtc/android/chess/ics/CustomCommands;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSPrefs$1;->this$0:Ljwtc/android/chess/ics/ICSPrefs;

    invoke-virtual {v0, p1}, Ljwtc/android/chess/ics/ICSPrefs;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
