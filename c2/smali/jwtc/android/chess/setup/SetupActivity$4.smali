.class Ljwtc/android/chess/setup/SetupActivity$4;
.super Ljava/lang/Object;
.source "SetupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/setup/SetupActivity;->onSave()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/setup/SetupActivity;


# direct methods
.method constructor <init>(Ljwtc/android/chess/setup/SetupActivity;)V
    .locals 0

    .line 153
    iput-object p1, p0, Ljwtc/android/chess/setup/SetupActivity$4;->this$0:Ljwtc/android/chess/setup/SetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 155
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 157
    iget-object p1, p0, Ljwtc/android/chess/setup/SetupActivity$4;->this$0:Ljwtc/android/chess/setup/SetupActivity;

    invoke-virtual {p1}, Ljwtc/android/chess/setup/SetupActivity;->commitFEN()V

    .line 158
    iget-object p1, p0, Ljwtc/android/chess/setup/SetupActivity$4;->this$0:Ljwtc/android/chess/setup/SetupActivity;

    invoke-virtual {p1}, Ljwtc/android/chess/setup/SetupActivity;->finish()V

    return-void
.end method
