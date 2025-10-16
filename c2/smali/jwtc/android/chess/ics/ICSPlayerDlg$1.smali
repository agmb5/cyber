.class Ljwtc/android/chess/ics/ICSPlayerDlg$1;
.super Ljava/lang/Object;
.source "ICSPlayerDlg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/ics/ICSPlayerDlg;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/ics/ICSPlayerDlg;


# direct methods
.method constructor <init>(Ljwtc/android/chess/ics/ICSPlayerDlg;)V
    .locals 0

    .line 50
    iput-object p1, p0, Ljwtc/android/chess/ics/ICSPlayerDlg$1;->this$0:Ljwtc/android/chess/ics/ICSPlayerDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 53
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSPlayerDlg$1;->this$0:Ljwtc/android/chess/ics/ICSPlayerDlg;

    invoke-virtual {p1}, Ljwtc/android/chess/ics/ICSPlayerDlg;->dismiss()V

    return-void
.end method
