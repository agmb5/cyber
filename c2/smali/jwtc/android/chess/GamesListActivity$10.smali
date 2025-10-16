.class Ljwtc/android/chess/GamesListActivity$10;
.super Ljava/lang/Object;
.source "GamesListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/GamesListActivity;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/GamesListActivity;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Ljwtc/android/chess/GamesListActivity;J)V
    .locals 0

    .line 239
    iput-object p1, p0, Ljwtc/android/chess/GamesListActivity$10;->this$0:Ljwtc/android/chess/GamesListActivity;

    iput-wide p2, p0, Ljwtc/android/chess/GamesListActivity$10;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 242
    sget-object p2, Ljwtc/android/chess/helpers/MyPGNProvider;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v0, p0, Ljwtc/android/chess/GamesListActivity$10;->val$id:J

    invoke-static {p2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    .line 243
    iget-object v0, p0, Ljwtc/android/chess/GamesListActivity$10;->this$0:Ljwtc/android/chess/GamesListActivity;

    invoke-virtual {v0}, Ljwtc/android/chess/GamesListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 244
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
