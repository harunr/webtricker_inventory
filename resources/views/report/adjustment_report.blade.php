@extends('layout.main')
@section('content')

<div class="container mt-4">
 <form action="{{route('report.adjustment_report')}}" method="get">
    <div class="row">
            <div class="col-md-7">
                <label>Warehouse</label>
                <select name="warehouse" class="form-control">
                    <option value="">choose warehouse </option>
                    @foreach(DB::table('warehouses')->get() as $warehouse)
                    <option value="{{$warehouse->id}}">{{$warehouse->name}}</option>
                    @endforeach
                </select>
        </div>
        <div class="col-md-3 mt-4">
            <button type="submit" class="btn btn-primary">Search</button>
        </div>
    </div>
    </form>
</div>

<div class="container mt-4">
    <div class="row">
        <div class="col-md-12">
            <div class="responsive-table">
                <table class="table table-bordered">
                    <thead>
                        <th>Ref</th>
                        <th>Product Name</th>
                        <th>Addition (+) </th>
                        <th>Subtraction (-)</th>
                        <th>Total Qty </th>
                        <th>Addition/Subtraction</th>
                        <th>Price </th>
                    </thead>
                    <tbody>
                    <?php 

                        $total_adjust_qty = 0;
                        $total_adjust_price = 0;

                    ?>
                    @foreach($adjustments as $key=>$adjustment)
                    <?php
                        $products = DB::table('product_adjustments')->where('adjustment_id',$adjustment->id)->get();
                        $subtraction_qty = 0;
                        $addition_qty = 0;
                        $subtraction_product_price =0;
                        $addition_product_price = 0;
                    ?>
                        <tr>
                            <td style="vertical-align: middle;">{{$adjustment->reference_no}}</td>
                            <td>
                                <table class="table">
                                @foreach($products as $product)
                                    <tr>
                                        <td>{{DB::table('products')->find($product->product_id)->name}}</td>
                                    </tr>
                                @endforeach
                                </table>
                            </td>
                            <td>
                                <table class="table">
                                    @foreach($products as $product)
                                    @if($product->action == "+")
                                    <tr>
                                        <td>{{$product->qty}}</td>
                                        <?php $addition_qty += $product->qty;
                                            $price = DB::table('products')->find($product->product_id)->cost;
                                            $addition_product_price += $product->qty * $price;
                                        
                                          ?>
                                    </tr>
                                    @else
                                    <tr>
                                        <td>-</td>
                                    </tr>
                                    @endif 
                                @endforeach
                                </table>
                            </td>
                            <td>
                                <table class="table">
                                @foreach($products as $product)
                                    @if($product->action == "-")
                                    <tr>
                                        <td>{{$product->qty}}</td>
                                        <?php $subtraction_qty += $product->qty;
                                            $price = DB::table('products')->find($product->product_id)->cost;
                                            $subtraction_product_price += $product->qty * $price;
                                          ?>
                                    </tr>
                                    @else
                                    <tr>
                                        <td>-</td>
                                    </tr>
                                    @endif 
                                @endforeach
                                </table>
                            </td>
                            <td style="vertical-align: middle;">{{$addition_qty - $subtraction_qty}}</td>
                                <?php $total_adjust_qty += ($addition_qty - $subtraction_qty)  ?>
                            <td>{{$addition_product_price .'/'. $subtraction_product_price }}</td>
                            <td style="vertical-align: middle;">{{$addition_product_price - $subtraction_product_price}}</td>
                            <?php $total_adjust_price += ($addition_product_price - $subtraction_product_price);   ?>
                        </tr>
                        @endforeach
                    </tbody>
                    <tfoot>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th>{{$total_adjust_qty}}</th>
                        <th></th>
                        <th>{{$total_adjust_price}}</th>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
</div>

@endsection