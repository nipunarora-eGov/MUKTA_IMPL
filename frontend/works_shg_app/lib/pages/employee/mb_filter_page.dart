import 'package:digit_components/digit_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:works_shg_app/blocs/employee/mb/measurement_book.dart';
import 'package:works_shg_app/router/app_router.dart';

import '../../blocs/wage_seeker_registration/wage_seeker_location_bloc.dart';
import '../../utils/common_methods.dart';
import '../../widgets/SideBar.dart';
import '../../widgets/atoms/app_bar_logo.dart';
import '../../widgets/drawer_wrapper.dart';

class MBFilterPage extends StatefulWidget {
  const MBFilterPage({super.key});

  @override
  State<MBFilterPage> createState() => _MBFilterPageState();
}

class _MBFilterPageState extends State<MBFilterPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MeasurementInboxBloc, MeasurementInboxState>(
      builder: (context, state) {
        return state.maybeMap(orElse: () => const SizedBox.shrink(),
        loaded: (value) {
           return BlocBuilder<WageSeekerLocationBloc, WageSeekerLocationState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () {
                return const SizedBox.shrink();
              },
              loaded: (location) {
                return Scaffold(
                  appBar: AppBar(
                    titleSpacing: 0,
                    title: const AppBarLogo(),
                  ),
                  drawer: DrawerWrapper(
                    Drawer(
                      child: SideBar(
                        module: CommonMethods.getLocaleModules(),
                      ),
                    ),
                  ),
                  body: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ScrollableContent(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      footer: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 2,
                              child: DigitOutLineButton(
                                label: "Clear",
                                onPressed: () {},
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: DigitElevatedButton(
                                child: const Text("Filter"),
                                onPressed: () {},
                              ),
                            )
                          ],
                        ),
                      ),
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                                onPressed: () {
                                  context.router.pop();
                                },
                                icon: const Icon(Icons.close)),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(Icons.filter_alt),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Filter",
                                style: DigitTheme.instance.mobileTheme.textTheme
                                    .headlineLarge,
                              ),
                            ),
                          ],
                        ),
                        const DigitTextField(label: "MB number"),
                        const DigitTextField(label: "Project ID"),
                        const DigitTextField(label: "Project Name"),
                        DigitDropdown(
                          onChanged: (value) {},
                          value: null,
                          label: "Ward",
                          menuItems: location!
                              .tenantBoundaryList!.first.boundaryList!
                              .map((e) => e.code.toString())
                              .toList(),
                          // menuItems: const ["WARD1", "WARD2", "WARD3", "WARD4"],
                          valueMapper: (value) {
                            return value.toString();
                          },
                        ),
                        DigitDropdown(
                          onChanged: (value) {},
                          value: null,
                          label: "Workflow States",
                          menuItems: value.mbInboxResponse.statusMap!.map((e) => e.state.toString()).toList(),
                          valueMapper: (value) {
                            return value.toString();
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        );
        },
        );
       
      },
    );
  }
}
