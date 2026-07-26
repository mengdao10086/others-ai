.class Lmiuix/androidbasewidget/widget/SeekBar$2$2;
.super Lmiuix/animation/listener/TransitionListener;
.source "SeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/androidbasewidget/widget/SeekBar$2;->onProgressChanged(Landroid/widget/SeekBar;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiuix/androidbasewidget/widget/SeekBar$2;


# direct methods
.method constructor <init>(Lmiuix/androidbasewidget/widget/SeekBar$2;)V
    .registers 2

    .line 899
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/SeekBar$2$2;->this$1:Lmiuix/androidbasewidget/widget/SeekBar$2;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 901
    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->PROPERTY_DRAW_PROGRESS:Lmiuix/animation/property/IntValueProperty;
    invoke-static {}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1400()Lmiuix/animation/property/IntValueProperty;

    move-result-object p1

    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findBy(Ljava/util/Collection;Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 903
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/SeekBar$2$2;->this$1:Lmiuix/androidbasewidget/widget/SeekBar$2;

    iget-object p2, p2, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p1

    # setter for: Lmiuix/androidbasewidget/widget/SeekBar;->mDrawProgress:F
    invoke-static {p2, p1}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1502(Lmiuix/androidbasewidget/widget/SeekBar;F)F

    .line 904
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/SeekBar$2$2;->this$1:Lmiuix/androidbasewidget/widget/SeekBar$2;

    iget-object p1, p1, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->invalidate()V

    :cond_1c
    return-void
.end method
