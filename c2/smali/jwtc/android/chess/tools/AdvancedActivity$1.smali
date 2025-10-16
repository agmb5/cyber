.class Ljwtc/android/chess/tools/AdvancedActivity$1;
.super Ljava/lang/Object;
.source "AdvancedActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/tools/AdvancedActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/tools/AdvancedActivity;

.field final synthetic val$arrString:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljwtc/android/chess/tools/AdvancedActivity;[Ljava/lang/CharSequence;)V
    .locals 0

    .line 62
    iput-object p1, p0, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    iput-object p2, p0, Ljwtc/android/chess/tools/AdvancedActivity$1;->val$arrString:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 67
    iget-object v0, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    invoke-virtual {v0}, Ljwtc/android/chess/tools/AdvancedActivity;->hasPermission()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object v0, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->val$arrString:[Ljava/lang/CharSequence;

    aget-object v0, v0, p3

    iget-object v2, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    const v3, 0x7f0e013c

    invoke-virtual {v2, v3}, Ljwtc/android/chess/tools/AdvancedActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    invoke-virtual {v0}, Ljwtc/android/chess/tools/AdvancedActivity;->doExport()V

    goto/16 :goto_3

    .line 73
    :cond_1
    iget-object v0, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->val$arrString:[Ljava/lang/CharSequence;

    aget-object v0, v0, p3

    iget-object v2, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    const v3, 0x7f0e013e

    invoke-virtual {v2, v3}, Ljwtc/android/chess/tools/AdvancedActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "android.intent.action.OPEN_DOCUMENT"

    const-string v3, "*/*"

    const-string v4, "android.intent.category.OPENABLE"

    if-eqz v0, :cond_2

    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    iget-object v2, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Ljwtc/android/chess/tools/AdvancedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    .line 78
    :cond_2
    iget-object v0, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->val$arrString:[Ljava/lang/CharSequence;

    aget-object v0, v0, p3

    iget-object v5, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    const v6, 0x7f0e0138

    invoke-virtual {v5, v6}, Ljwtc/android/chess/tools/AdvancedActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    iget-object v2, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    const/4 v3, 0x5

    invoke-virtual {v2, v0, v3}, Ljwtc/android/chess/tools/AdvancedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    .line 84
    :cond_3
    iget-object v0, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->val$arrString:[Ljava/lang/CharSequence;

    aget-object v0, v0, p3

    iget-object v5, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    const v6, 0x7f0e0145

    invoke-virtual {v5, v6}, Ljwtc/android/chess/tools/AdvancedActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    iget-object v2, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    const/16 v3, 0x9

    invoke-virtual {v2, v0, v3}, Ljwtc/android/chess/tools/AdvancedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    .line 89
    :cond_4
    iget-object v0, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->val$arrString:[Ljava/lang/CharSequence;

    aget-object v0, v0, p3

    iget-object v5, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    const v6, 0x7f0e0143

    invoke-virtual {v5, v6}, Ljwtc/android/chess/tools/AdvancedActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x0

    const v6, 0x7f0e003a

    const-string v7, "engines"

    if-eqz v0, :cond_7

    .line 94
    :try_start_0
    new-instance v0, Lcom/kalab/chess/enginesupport/ChessEngineResolver;

    iget-object v2, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    invoke-virtual {v2}, Ljwtc/android/chess/tools/AdvancedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/kalab/chess/enginesupport/ChessEngineResolver;-><init>(Landroid/content/Context;)V

    .line 95
    invoke-virtual {v0}, Lcom/kalab/chess/enginesupport/ChessEngineResolver;->resolveEngines()Ljava/util/List;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 98
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 99
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v5, v4, :cond_5

    .line 102
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kalab/chess/enginesupport/ChessEngine;

    invoke-virtual {v4}, Lcom/kalab/chess/enginesupport/ChessEngine;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 104
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 105
    new-instance v4, Ljwtc/android/chess/tools/AdvancedActivity$1$1;

    invoke-direct {v4, v1, v0}, Ljwtc/android/chess/tools/AdvancedActivity$1$1;-><init>(Ljwtc/android/chess/tools/AdvancedActivity$1;Ljava/util/List;)V

    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 133
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_3

    :cond_6
    const-string v0, "No engines found"

    .line 138
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 140
    iget-object v2, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    const v3, 0x7f0e014c

    invoke-virtual {v2, v3}, Ljwtc/android/chess/tools/AdvancedActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 142
    iget-object v2, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    invoke-virtual {v2, v6}, Ljwtc/android/chess/tools/AdvancedActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljwtc/android/chess/tools/AdvancedActivity$1$2;

    invoke-direct {v3, v1}, Ljwtc/android/chess/tools/AdvancedActivity$1$2;-><init>(Ljwtc/android/chess/tools/AdvancedActivity$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 148
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    .line 152
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 156
    :cond_7
    iget-object v0, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->val$arrString:[Ljava/lang/CharSequence;

    aget-object v0, v0, p3

    iget-object v8, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    const v9, 0x7f0e013a

    invoke-virtual {v8, v9}, Ljwtc/android/chess/tools/AdvancedActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v8, 0x7f0e0035

    if-eqz v0, :cond_8

    .line 157
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 158
    iget-object v2, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    const v3, 0x7f0e0136

    invoke-virtual {v2, v3}, Ljwtc/android/chess/tools/AdvancedActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 160
    iget-object v2, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    invoke-virtual {v2, v6}, Ljwtc/android/chess/tools/AdvancedActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljwtc/android/chess/tools/AdvancedActivity$1$3;

    invoke-direct {v3, v1}, Ljwtc/android/chess/tools/AdvancedActivity$1$3;-><init>(Ljwtc/android/chess/tools/AdvancedActivity$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 167
    iget-object v2, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    invoke-virtual {v2, v8}, Ljwtc/android/chess/tools/AdvancedActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljwtc/android/chess/tools/AdvancedActivity$1$4;

    invoke-direct {v3, v1}, Ljwtc/android/chess/tools/AdvancedActivity$1$4;-><init>(Ljwtc/android/chess/tools/AdvancedActivity$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 173
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_3

    .line 176
    :cond_8
    iget-object v0, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->val$arrString:[Ljava/lang/CharSequence;

    aget-object v0, v0, p3

    iget-object v9, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    const v10, 0x7f0e013d

    invoke-virtual {v9, v10}, Ljwtc/android/chess/tools/AdvancedActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 177
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 178
    iget-object v2, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    const-class v3, Ljwtc/android/chess/HtmlActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 179
    sget-object v2, Ljwtc/android/chess/HtmlActivity;->HELP_MODE:Ljava/lang/String;

    const-string v3, "help_pgntool"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    iget-object v2, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    invoke-virtual {v2, v0}, Ljwtc/android/chess/tools/AdvancedActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 181
    :cond_9
    iget-object v0, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->val$arrString:[Ljava/lang/CharSequence;

    aget-object v0, v0, p3

    iget-object v9, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    const v10, 0x7f0e0146

    invoke-virtual {v9, v10}, Ljwtc/android/chess/tools/AdvancedActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 182
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    iget-object v2, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    const/4 v3, 0x6

    invoke-virtual {v2, v0, v3}, Ljwtc/android/chess/tools/AdvancedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    .line 187
    :cond_a
    iget-object v0, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->val$arrString:[Ljava/lang/CharSequence;

    aget-object v0, v0, p3

    iget-object v9, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    const v10, 0x7f0e014e

    invoke-virtual {v9, v10}, Ljwtc/android/chess/tools/AdvancedActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v9, " uninstalled"

    const-string v10, " deleted"

    const-string v11, " NOT deleted"

    const-string v12, "/data/data/jwtc.android.chess/"

    const-string v13, "ChessPlayer"

    const/4 v14, 0x0

    if-eqz v0, :cond_d

    .line 188
    iget-object v0, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    invoke-virtual {v0, v13, v5}, Ljwtc/android/chess/tools/AdvancedActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "UCIEngine"

    .line 189
    invoke-interface {v0, v2, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 191
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 195
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 198
    invoke-interface {v0, v2, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 199
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 200
    iget-object v0, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Engine "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljwtc/android/chess/tools/AdvancedActivity;->doToast(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 202
    :cond_c
    iget-object v0, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    const-string v2, "No engine installed"

    invoke-virtual {v0, v2}, Ljwtc/android/chess/tools/AdvancedActivity;->doToast(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 204
    :cond_d
    iget-object v0, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->val$arrString:[Ljava/lang/CharSequence;

    aget-object v0, v0, p3

    iget-object v7, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    const v15, 0x7f0e0142

    invoke-virtual {v7, v15}, Ljwtc/android/chess/tools/AdvancedActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 205
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    iget-object v2, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    const/4 v3, 0x7

    invoke-virtual {v2, v0, v3}, Ljwtc/android/chess/tools/AdvancedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    .line 210
    :cond_e
    iget-object v0, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->val$arrString:[Ljava/lang/CharSequence;

    aget-object v0, v0, p3

    iget-object v7, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    const v15, 0x7f0e014d

    invoke-virtual {v7, v15}, Ljwtc/android/chess/tools/AdvancedActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 211
    iget-object v0, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    invoke-virtual {v0, v13, v5}, Ljwtc/android/chess/tools/AdvancedActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "UCIDatabase"

    .line 212
    invoke-interface {v0, v2, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 214
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    const-string v5, "database"

    if-eqz v4, :cond_f

    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 218
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :goto_2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 221
    invoke-interface {v0, v2, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 222
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 223
    iget-object v0, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Database "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljwtc/android/chess/tools/AdvancedActivity;->doToast(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 225
    :cond_10
    iget-object v0, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    const-string v2, "No database installed"

    invoke-virtual {v0, v2}, Ljwtc/android/chess/tools/AdvancedActivity;->doToast(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 227
    :cond_11
    iget-object v0, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->val$arrString:[Ljava/lang/CharSequence;

    aget-object v0, v0, p3

    iget-object v5, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    const v7, 0x7f0e0147

    invoke-virtual {v5, v7}, Ljwtc/android/chess/tools/AdvancedActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 229
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 230
    iget-object v2, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    const v3, 0x7f0e0137

    invoke-virtual {v2, v3}, Ljwtc/android/chess/tools/AdvancedActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 232
    iget-object v2, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    invoke-virtual {v2, v6}, Ljwtc/android/chess/tools/AdvancedActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljwtc/android/chess/tools/AdvancedActivity$1$5;

    invoke-direct {v3, v1}, Ljwtc/android/chess/tools/AdvancedActivity$1$5;-><init>(Ljwtc/android/chess/tools/AdvancedActivity$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 246
    iget-object v2, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    invoke-virtual {v2, v8}, Ljwtc/android/chess/tools/AdvancedActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljwtc/android/chess/tools/AdvancedActivity$1$6;

    invoke-direct {v3, v1}, Ljwtc/android/chess/tools/AdvancedActivity$1$6;-><init>(Ljwtc/android/chess/tools/AdvancedActivity$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 252
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_3

    .line 256
    :cond_12
    iget-object v0, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->val$arrString:[Ljava/lang/CharSequence;

    aget-object v0, v0, p3

    iget-object v5, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    const v6, 0x7f0e0140

    invoke-virtual {v5, v6}, Ljwtc/android/chess/tools/AdvancedActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 257
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    iget-object v2, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    const/4 v3, 0x3

    invoke-virtual {v2, v0, v3}, Ljwtc/android/chess/tools/AdvancedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    .line 262
    :cond_13
    iget-object v0, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->val$arrString:[Ljava/lang/CharSequence;

    aget-object v0, v0, p3

    iget-object v5, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    const v6, 0x7f0e0141

    invoke-virtual {v5, v6}, Ljwtc/android/chess/tools/AdvancedActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 263
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    iget-object v2, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Ljwtc/android/chess/tools/AdvancedActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    .line 268
    :cond_14
    iget-object v0, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->val$arrString:[Ljava/lang/CharSequence;

    aget-object v0, v0, p3

    iget-object v2, v1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    const v3, 0x7f0e013f

    invoke-virtual {v2, v3}, Ljwtc/android/chess/tools/AdvancedActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    :goto_3
    return-void
.end method
