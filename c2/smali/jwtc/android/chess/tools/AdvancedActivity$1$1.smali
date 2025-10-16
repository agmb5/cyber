.class Ljwtc/android/chess/tools/AdvancedActivity$1$1;
.super Ljava/lang/Object;
.source "AdvancedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/tools/AdvancedActivity$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljwtc/android/chess/tools/AdvancedActivity$1;

.field final synthetic val$engines:Ljava/util/List;


# direct methods
.method constructor <init>(Ljwtc/android/chess/tools/AdvancedActivity$1;Ljava/util/List;)V
    .locals 0

    .line 105
    iput-object p1, p0, Ljwtc/android/chess/tools/AdvancedActivity$1$1;->this$1:Ljwtc/android/chess/tools/AdvancedActivity$1;

    iput-object p2, p0, Ljwtc/android/chess/tools/AdvancedActivity$1$1;->val$engines:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 107
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 109
    iget-object p1, p0, Ljwtc/android/chess/tools/AdvancedActivity$1$1;->val$engines:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kalab/chess/enginesupport/ChessEngine;

    .line 110
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "files/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/kalab/chess/enginesupport/ChessEngine;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "engines"

    .line 111
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :try_start_0
    iget-object v0, p0, Ljwtc/android/chess/tools/AdvancedActivity$1$1;->this$1:Ljwtc/android/chess/tools/AdvancedActivity$1;

    iget-object v0, v0, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    invoke-virtual {v0}, Ljwtc/android/chess/tools/AdvancedActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Ljwtc/android/chess/tools/AdvancedActivity$1$1;->this$1:Ljwtc/android/chess/tools/AdvancedActivity$1;

    iget-object v1, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    invoke-virtual {v1}, Ljwtc/android/chess/tools/AdvancedActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/kalab/chess/enginesupport/ChessEngine;->copyToFiles(Landroid/content/ContentResolver;Ljava/io/File;)Ljava/io/File;

    .line 116
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "chmod"

    .line 117
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "744"

    .line 118
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/data/data/jwtc.android.chess/"

    .line 120
    invoke-static {p1, v0}, Ljwtc/android/chess/engine/UCIEngine;->runConsole(Ljava/util/List;Ljava/lang/String;)V

    .line 122
    iget-object p1, p0, Ljwtc/android/chess/tools/AdvancedActivity$1$1;->this$1:Ljwtc/android/chess/tools/AdvancedActivity$1;

    iget-object p1, p1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    const-string v0, "ChessPlayer"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljwtc/android/chess/tools/AdvancedActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "UCIEngine"

    .line 123
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    iget-object p1, p0, Ljwtc/android/chess/tools/AdvancedActivity$1$1;->this$1:Ljwtc/android/chess/tools/AdvancedActivity$1;

    iget-object p1, p1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    iget-object v0, p0, Ljwtc/android/chess/tools/AdvancedActivity$1$1;->this$1:Ljwtc/android/chess/tools/AdvancedActivity$1;

    iget-object v0, v0, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    const v2, 0x7f0e014b

    invoke-virtual {v0, v2}, Ljwtc/android/chess/tools/AdvancedActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljwtc/android/chess/tools/AdvancedActivity;->doToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    iget-object p1, p0, Ljwtc/android/chess/tools/AdvancedActivity$1$1;->this$1:Ljwtc/android/chess/tools/AdvancedActivity$1;

    iget-object p1, p1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    iget-object p2, p0, Ljwtc/android/chess/tools/AdvancedActivity$1$1;->this$1:Ljwtc/android/chess/tools/AdvancedActivity$1;

    iget-object p2, p2, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    const v0, 0x7f0e014a

    invoke-virtual {p2, v0}, Ljwtc/android/chess/tools/AdvancedActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljwtc/android/chess/tools/AdvancedActivity;->doToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
