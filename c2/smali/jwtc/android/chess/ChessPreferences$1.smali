.class Ljwtc/android/chess/ChessPreferences$1;
.super Ljava/lang/Object;
.source "ChessPreferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/ChessPreferences;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/ChessPreferences;


# direct methods
.method constructor <init>(Ljwtc/android/chess/ChessPreferences;)V
    .locals 0

    .line 42
    iput-object p1, p0, Ljwtc/android/chess/ChessPreferences$1;->this$0:Ljwtc/android/chess/ChessPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .line 44
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.extra.ringtone.TYPE"

    const/4 v1, 0x2

    .line 45
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "android.intent.extra.ringtone.TITLE"

    const-string v1, "Notification tone"

    .line 46
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    iget-object v0, p0, Ljwtc/android/chess/ChessPreferences$1;->this$0:Ljwtc/android/chess/ChessPreferences;

    invoke-static {v0}, Ljwtc/android/chess/ChessPreferences;->access$000(Ljwtc/android/chess/ChessPreferences;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 48
    move-object v2, v0

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Ljwtc/android/chess/ChessPreferences$1;->this$0:Ljwtc/android/chess/ChessPreferences;

    invoke-static {v0}, Ljwtc/android/chess/ChessPreferences;->access$000(Ljwtc/android/chess/ChessPreferences;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 52
    :goto_0
    iget-object v0, p0, Ljwtc/android/chess/ChessPreferences$1;->this$0:Ljwtc/android/chess/ChessPreferences;

    invoke-static {}, Ljwtc/android/chess/ChessPreferences;->access$100()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljwtc/android/chess/ChessPreferences;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x1

    return p1
.end method
